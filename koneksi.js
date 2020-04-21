var mysql = require('mysql');

//koneksi db
const conn = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'uts_bengkel'
});

conn.connect((err)=>{
    if(err) throw err;
    console.log('Mysql terkoneksi');
});

module.exports = conn;