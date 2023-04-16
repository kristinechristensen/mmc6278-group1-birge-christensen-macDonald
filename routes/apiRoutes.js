const router = require("express").Router();
const controllers = require("../controllers");
const checkAuth = require("../middleware/auth");
const db = require('../db');
// admin login/logout
router.post("/login", controllers.auth.login);
router.get("/logout", controllers.auth.logout);
router.post("/signup", controllers.user.create);


// router.get('/', function(req, res, next) {
//     request({
//       uri: 'https://api.artic.edu/api/v1/artworks?page=2&limit=100',
//     }).pipe(res);
//   });


module.exports = router;
 