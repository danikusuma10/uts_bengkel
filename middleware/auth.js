var connection = require('../koneksi');
var mysql = require('mysql');
var md5 = require('md5');
var response=require('../res');
var jwt = require('jsonwebtoken');
var config = require('../config/secret');
var ip = require('ip');

//controller untuk register
exports.registrasi=function(req,res){
    var post ={
        id_user: req.body.id_user,
        nama_user: req.body.nama_user,
        email: req.body.email,
        password: md5(req.body.password),
        id_level: req.body.id_level
    }

    //cek apakah email sudah ada?
    var query = "SELECT email from ?? WHERE ?? ";
    var table = ["t_user", "email", post.email]

    query = mysql.format(query,table);

    connection.query(query, function(error, rows) {
        if(error){
            console.log(error);
        }else {
            if(rows.length == 0){
                var query = "INSERT INTO ?? SET ?";
                var table = ["t_user"];
                query = mysql.format(query, table);
                connection.query(query, post, function(error, rows){
                    if(error){
                        console.log(error);
                    }else {
                        response.ok("Berhasil menambahkan data user baru", res);
                    }
                });
            }else {
                response.ok("Email sudah terdaftar!",res);
            }
        }
    })


}