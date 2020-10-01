const express = require("express");
const worksLogic = require("../logic/item-logic");
const router = express.Router();

// GET <http://localhost:3000/api/works>
router.get("/works", async (request, response) => {
  try {
    const works = await worksLogic.getAllWorksAsync();
    response.json(works);
  } catch (err) {
    response.status(500).send(err.message);
  }
});
module.exports = router;
