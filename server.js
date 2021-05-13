const express = require("express");
const bodyParser = require("body-parser");
const cors = require('cors')({origin: true});

const app = express();

// parse requests of content-type - application/json
app.use(bodyParser.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

app.use(cors);


// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to REST API." });
});

require("./app/routes/registration.routes.js")(app);

// set port, listen for requests
const PORT = process.env.PORT || 3006;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});
