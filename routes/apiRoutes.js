const router = require("express").Router();
const controllers = require("../controllers");
const checkAuth = require("../middleware/auth");
const db = require('../db');
// admin login/logout
router.post("/login", controllers.auth.login);
router.get("/logout", controllers.auth.logout);
router.post("/signup", controllers.user.create);

/* Routes for Creating a User's Favorites List */

router
    .route('/favorites')
    .post(checkAuth, async(req, res) => {
        const{quantity} = req.body
        const {favoriteId} = req.query
        const[[item]]  = await db.query (
            `SELECT * FROM artwork WHERE id=?`, 
            [favoriteId]
        )

        if (!item)
            return res.status(404).send('Item not found')
        
        const [[favoriteItem]] = await db.query (

            `SELECT artwork.id, 
            name, 
            image,
            location, 
            collection, 
            favorites.id AS favorites_id, 
            favorites.user_id

            FROM favorites
            LEFT JOIN on favorites.artwork_id = artwork.id
            WHERE artwork.id = ? AND favorites.user_id=?;`,
            [favoriteId, req.session.userId]
        )

            if (favoriteItem) {
                await db.query (
                    `UPDATE favorites SET quantity=quantity+? WHERE
                    artwork_id = ? AND user_id =?`,
                    [quantity, favoriteId, req.session.userId]
                    
                )
            }
            else {
                await db.query (
                    `INSERT INTO favorites (artwork_id, quantity, user_id)
                    VALUES (?,?,?)`,
                    [favoriteId, quantity, req.session.userId]
                )
            }
        res.redirect('/favorites')
    })

    .delete(checkAuth, async (req, res) => {
        await db.query(`DELETE FROM favorites WHERE user_id=?`, [req.session.userId])
        res.redirect('/favorites')
      })


/* Favorite ID */

    router  
      .route('/favorites/:favorites_id')
      .put(checkAuth, async(req,res) => {
        const{quantity} = req.body
        const[[favoriteItem]] = await db.query (
            `SELECT
            favorites.quantity as favoritesQuantity
            FROM favorites
            LEFT JOIN artwork on favorites.artwork_id = artwork.id
            WHERE favorites.id?  AND favorites.user_id=?`,
            [req.params.favorites_id, req.session.userId]
        )

        if (!favoriteItem) return res.status(404).send("Art Not Found")

        const {favoritesQuantity} = favoriteItem

        if (quantity > 0) {
            await db.query(`UPDATE favorites SET quantity=? WHERE id=? AND user_id=?`,
            [quantity, req.params.favorites_id, req.session.userId]) }
        else {
            await db.query (
                `DELETE FROM favorites WHERE id=? AND user_id=?`, 
                [req.params.favorites_id, req.session.userId]
            )
            }

        res.status(204).end();
      })


    .delete(checkAuth, async (req, res) => {
        const [{affectedRows}] = await db.query(
          `DELETE FROM favorites WHERE id=? AND user_id=?`,
          [req.params.favorites_id, req.session.userId]
        )
        if (affectedRows === 1)
          res.status(204).end()
        else
          res.status(404).send('Art Work  not found')
      })



module.exports = router;
