const express = require("express");
const app = express();
const port = 3000;

// single route to confirm the app is running
app.get("/", (req, res) => {
  res.send("GitHub Actions playground is alive");
});

// export app for testing: same pattern as BE testing
module.exports = app;
