const router = require("express").Router();
const controllers = require("../controllers");
const axios = require('axios');
const checkAuth = require("../middleware/auth");
const db = require('../db');


router.get("/",  async (req, res) => {
  const [rows] = await db.query(`SELECT
  artwork.id AS id,
  artist.name AS artist_name,
  artwork.name AS name,
  artwork.image AS image
  FROM artist
  INNER JOIN artwork ON artist.id=artwork.artist_id;`)

  const data = {items: rows, loggedIn: req.session.loggedIn}
    if (req.session.isLoggedIn) {
    const [[{favoriteCount}]] = await db.query(
      `SELECT SUM(quantity) AS favoriteCount FROM favorites WHERE user_id=?;`,
      [req.session.userId]
    )
    data.favoriteCount =favoriteCount || 0
  }


  res.render("index", {isLoggedIn: req.session.isLoggedIn, rows});
});


// router.get('/', async ({session:{isLoggedIn}}), res) => {
//   const [rows] = await db.query(`SELECT
//   artwork.id AS id,
//   artist.name AS artist_name,
//   artwork.name AS name,
//   artwork.image AS image
//   FROM artist
//   INNER JOIN artwork ON artist.id=artwork.artist_id;`)
  
//   const data = {items: rows, isloggedIn: req.session.loggedIn}

//   if (req.session.isloggedIn) {
//     const [[{favoriteCount}]] = await db.query(
//       `SELECT SUM(quantity) AS favoriteCount FROM favorites WHERE user_id=?;`,
//       [req.session.userId]
//     )
//     data.favoriteCount = favoriteCount || 0
//   }

//  res.render('index', {rows});
// })


  router.get("/login", async (req, res) => {
  if (req.session.isLoggedIn) return res.redirect("/");
  res.render("login", { error: req.query.error });
});

router.get("/signup", async (req, res) => {
  if (req.session.isLoggedIn) return res.redirect("/");
  res.render("signup", { error: req.query.error });
});

// router.get("/private", checkAuth, ({ session: { isLoggedIn } }, res) => {
//   res.render("protected", { isLoggedIn });
// });

router.get('/work/:id', checkAuth, async(req,res) => {
  const [[work]] = await db.query(
    `SELECT
    artist.name AS artist_name,
    artwork.artist_id AS artist_id,
    artwork.id AS id,
    artwork.name AS name,
    artwork.image AS image,
    artwork.description AS description,
    artwork.medium AS med,
    artwork.year AS year,
    artwork.location AS loc,
    artwork.collection AS coll
    FROM artist
    INNER JOIN artwork ON artist.id=artwork.artist_id
    WHERE artwork.id=?;`,
    [req.params.id]
  )
 // const data = {items: work, isLoggedIn: req.session.loggedIn}

//add isLoggedIn: req.session.loggedIn -

//res.render("index", work) //isLoggedIn


  if (req.session.isLoggedIn) {
    const [[{favoriteCount}]] = await db.query(
      `SELECT SUM(quantity) AS favoriteCount FROM favorites WHERE user_id=?;`,
      [req.session.userId]
    )
   // data.favoriteCount = favoriteCount || 0
  }

 res.render("work", {isLoggedIn: req.session.isLoggedIn, work});
});
    
/* Display information about artist and artwork */
router.get('/artist/:id', checkAuth, async (req, res) => {
  const [artist] = await db.query(
    `SELECT
    artwork.id AS id,
    artist.name AS artist_name,
    artist.bio AS artist_bio,
    artwork.name AS name,
    artwork.image AS image
    FROM artist
    INNER JOIN artwork ON artist.id=artwork.artist_id
    WHERE artist.id=?;`,
    [req.params.id]
  );

  const [[artistInfo]] = await db.query(
    'SELECT * FROM artist WHERE id=?;',
    [req.params.id]
  )

   

  res.render('byArtist', {isLoggedIn: req.session.isLoggedIn,artist, artistInfo})
});


  
  router.get('/random/', checkAuth, async(req,res) => {
    
    const [[random]] = await db.query(
      `SELECT
      artwork.id AS id,
      artwork.image AS image
      FROM artwork 
      ORDER BY RAND() LIMIT 1`      
      );
  
  res.render('random', {isLoggedIn: req.session.isLoggedIn, random})
});





/* External API - Chicago Art Institute */
router.get("/aicapi", checkAuth, async(req, res) => {

  const response = await axios.get('https://api.artic.edu/api/v1/artworks?page=35&limit=20')
  console.log(response.data.data)
  res.render('aicapi', { isLoggedIn: req.session.isLoggedIn, rows: response.data.data })
  
});

//ADD checkAuth, - isLoggedIn


/* Create routes for favorites */

router.get('/favorite', checkAuth, async (req, res) => {
  const [[favId]] = await db.query (
    `SELECT favoriteId FROM users WHERE id=?`,
    [req.session.userId]
  )

  console.log(favId)

  const [[work]] = await db.query(
    `SELECT
    artist.name AS artist_name,
    artwork.artist_id AS artist_id,
    artwork.id AS id,
    artwork.name AS name,
    artwork.image AS image,
    artwork.description AS description,
    artwork.medium AS med,
    artwork.year AS year,
    artwork.location AS loc,
    artwork.collection AS coll
    FROM artist
    INNER JOIN artwork ON artist.id=artwork.artist_id
    WHERE artwork.id=?;`,
    [favId.favoriteId]
  )

res.render('work', {
  isLoggedIn: req.session.isLoggedIn,
  work
   })
});


module.exports = router;
