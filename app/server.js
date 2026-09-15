const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello DevSecOps Project 🚀");
});

app.listen(process.env.PORT || 3000, "0.0.0.0", () => {
  console.log("Server running on port 3000");
});