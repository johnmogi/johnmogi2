const dal = require("../data/access-layer");
async function getAllWorksAsync() {
  const sql = "SELECT * FROM `works`";
  const works = await dal.executeAsync(sql);
  return works;
}
module.exports = { getAllWorksAsync };
