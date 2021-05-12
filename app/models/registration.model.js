const sql = require("./db.js");

// constructor
const Registration = function(registration) {
  this.data = registration.data;
};

Registration.create = (newRegistration, result) => {
  sql.query("INSERT INTO registrations SET ?", newRegistration, (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(err, null);
      return;
    }

    console.log("created registration: ", { id: res.insertId, ...newRegistration });
    result(null, { id: res.insertId, ...newRegistration });
  });
};

Registration.getAll = result => {
  sql.query("SELECT * FROM registrations", (err, res) => {
    if (err) {
      console.log("error: ", err);
      result(null, err);
      return;
    }

    var list = [];

    res.forEach(item => {
      var data = JSON.parse(item.data);
      console.log("stringify-----", data);
      list.push(data)
    })
    
    result(null, list);
  });
};

module.exports = Registration;
