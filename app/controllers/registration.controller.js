const Registration = require("../models/registration.model.js");

// Create and Save a new Registration
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Create a Registration
  const registration = new Registration({
    data: req.body.data,
  });

  // Save Registration in the database
  Registration.create(registration, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Registration."
      });
    else res.send(data);
  });
};

// Retrieve all Registrations from the database.
exports.findAll = (req, res) => {
  Registration.getAll((err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving registrations."
      });
    else res.send({ "registrations": data });
  });
};

