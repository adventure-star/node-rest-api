module.exports = app => {
  const registrations = require("../controllers/registration.controller.js");

  // Create a new Registration
  app.post("/", registrations.create);

  // Retrieve all Registrations
  app.get("/all", registrations.findAll);

};
