const router = require("express").Router();
const controllers = require("../controllers");
const request = require('request');
const checkAuth = require("../middleware/auth");
const db = require('../db')

router.get("/", async ({ session: { isLoggedIn } }, res) => {
  const [rows] = await db.query(`SELECT
  artwork.id AS id,
  artist.name AS artist_name,
  artwork.name AS name,
  artwork.image AS image
  FROM artist
  INNER JOIN artwork ON artist.id=artwork.artist_id;`)
  res.render("index", { rows, isLoggedIn });
});

router.get("/login", async (req, res) => {
  if (req.session.isLoggedIn) return res.redirect("/");
  res.render("login", { error: req.query.error });
});

router.get("/signup", async (req, res) => {
  if (req.session.isLoggedIn) return res.redirect("/");
  res.render("signup", { error: req.query.error });
});

router.get("/private", checkAuth, ({ session: { isLoggedIn } }, res) => {
  res.render("protected", { isLoggedIn });
});

router.get('/work/:id', async (req, res) => {
  const [[work]] = await db.query(
    `SELECT
    artist.name AS artist_name,
    artwork.artist_id AS artist_id,
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
  res.render('work', {work})
});

router.get('/artist/:id', async (req, res) => {
  const [rows] = await db.query(
    `SELECT
    artwork.id AS id,
    artist.name AS artist_name,
    artwork.name AS name,
    artwork.image AS image
    FROM artist
    INNER JOIN artwork ON artist.id=artwork.artist_id
    WHERE artist.id=?;`,
    [req.params.id]
  )
  res.render('index', {rows})
});

router.get("/aicapi", async (req, res) => {
  request({
    uri: 'https://api.artic.edu/api/v1/artworks?fields=id,title,artist_display,date_display,main_reference_numberpage=2&limit=2',
  }).pipe(res);
  //.render('aicapi');
  
});

module.exports = router;
