const router = require("express").Router();
const controllers = require("../controllers");
const checkAuth = require("../middleware/auth");

router.get("/", async ({ session: { isLoggedIn } }, res) => {
  const [rows] = await db.query(`SELECT
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
    'SELECT * FROM artwork WHERE id=?;',
    [req.params.id]
  )
  res.render('work', {work})
})

router.get('/artist/:artist', async (req, res) => {
  const [[rows]] = await db.query(
    `SELECT
    artist.name AS artist_name,
    artwork.name AS name,
    artwork.image AS image
    FROM artist
    INNER JOIN artwork ON artist.id=artwork.artist_id
    WHERE artist.name=?;`,
    [req.params.artist]
  )
  res.render('index', {rows})
})

module.exports = router;
