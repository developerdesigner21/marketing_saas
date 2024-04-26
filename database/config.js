// const mysql = require('mysql2')

// const con = mysql.createPool({
//     connectionLimit: 1000,
//     host: process.env.DBHOST || "localhost",
//     port: process.env.DBPORT || 3306,
//     user: process.env.DBUSER,
//     password: process.env.DBPASS,
//     database: process.env.DBNAME,
//     charset: 'utf8mb4'
// })


// con.getConnection((err) => {
//     if (err) {
//         console.log({
//             err: err,
//             msg: "Database connected error"
//         })
//         return
//     } else {
//         console.log('Database has been connected')
//     }
// })

// module.exports = con

const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'Saas_marketing',
  password: 'postgres',
  port: 5432, // Default PostgreSQL port
});

pool.connect((err, client, release) => {
  if (err) {
    console.error('Error connecting to PostgreSQL:', err);
    return;
  }
  console.log('Connected to PostgreSQL!');
  release(); // Release the client back to the pool
});

module.exports = pool
