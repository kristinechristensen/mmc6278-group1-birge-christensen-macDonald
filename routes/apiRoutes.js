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
    .route('/favorite')
    .post(checkAuth, async(req, res) => {
        console.log(req.session.userId)
        const {favoriteId} = req.query
        await db.query (
            `UPDATE users SET favoriteId=?
            WHERE id=?`, 
            [favoriteId, req.session.userId]
        )
        console.log("UPDATE users SET favoriteId=" + favoriteId + " WHERE id=" + req.session.userId)
        res.redirect('/favorite')
    })

    .delete(checkAuth, async (req, res) => {
        await db.query(`UPDATE users SET favoriteId=NULL WHERE id=?`, [req.session.userId])
        res.redirect('/favorite')
      })



module.exports = router;
