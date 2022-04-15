const pool = require("../db")
function getStaff() {
    const query = "SELECT * FROM staff";
    const rows = pool.query(query);
    return rows;
};

module.exports = { getStaff };