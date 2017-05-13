var express = require("express");
var router = express.Router();
var burger = require("../models/burger.js");

// Create all our routes and set up logic within those routes where required.
router.get("/", function(req, res) {
  burger.selectAll(function(data) {
    var hbsObject = {burgers:data};
    console.log(hbsObject);
    res.render("index", hbsObject);
  });
});

router.post("/api/", function(req, res) {
  burger.insertOne(["burger_name", "devoured"], [req.body.name, req.body.devoured], 
    function() {
      res.redirect("/");
  });
});

router.put("/api/:id", function(req, res) {
  var condition = req.params.id;

  console.log("condition", condition);

  burger.updateOne({devoured: true}, "id =" + condition, function() {
    res.redirect("/");
  });
});

// Export routes for server.js to use.
module.exports = router;
