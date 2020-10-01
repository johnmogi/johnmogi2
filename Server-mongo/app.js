const express = require("express");
const cors = require("cors");
const worksController = require("./controllers/work-controller");
const server = express();

server.use(cors());
server.use(express.json());
server.use("/api/works", worksController);

server.listen(3001, () => console.log("Listening on http://localhost:3001"));

