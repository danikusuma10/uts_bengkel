var connection = require('../koneksi');
var mysql = require('mysql');
var md5 = require('md5');
var response=require('../res');
var jwt = require('jsonwebtoken');
var config = require('../config/secret');
var ip = require('ip');




//controller untuk register
exports.register=function(req,res){
    var post ={
        id_user: req.body.id_user,
        nama_user: req.body.nama_user,
        email: req.body.email,
        password: md5(req.body.password),
        id_level: req.body.id_level
    }

    //cek apakah email sudah ada?
    var query = "SELECT email from ?? WHERE ??=? ";
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

//controller untuk login
exports.login = function(req,res){
    var post = {
    password: req.body.password,
    email: req.body.email
    }

    var query = "SELECT * FROM ?? WHERE ??=? AND ??=?";
    var table = ["t_user", "password", md5(post.password), "email", post.email];

    query = mysql.format(query,table);
    connection.query(query, function(error, rows){
        if(error){
            console.log(error);
        }else {
            if(rows.length == 1){
                var token = jwt.sign({rows}, config.secret, {
                    expiresIn: 1440
                });
                id_user = rows[0].id_user;

                var data = {
                    id_user: id_user,
                    access_token: token,
                    ip_address: ip.address()
                }

                var query = "INSERT INTO ?? SET ?";
                var table = ["akses_token"];

                query = mysql.format(query, table);
                connection.query(query, data , function(error, rows){
                    if(error){
                        console.log(error);
                    }else {
                        res.json({
                            success: true,
                            message: "Token JWT Tergenerate!",
                            token:token,
                            currUser: data.id_user
                        });
                    }
                });
            }else {
                res.json({"Error": true, "Message":"Email atau password salah!"});
            }
        }
    });
}



                //No.2 POST
////add data service
exports.addservice = function (req, res) {
    var post = {
        id_service: req.body.id_service,
     tgl_service: new Date(),
     id_user: req.body.id_user,
     id_montir: req.body.id_montir,
     id_sparepart: req.body.id_sparepart,
     jumlah_sparepart: req.body.jumlah_sparepart	
     
    }
      var query = "SELECT id_service FROM ?? WHERE ??=?";
    var table = ["t_service", "id_service", post.id_service];

    query = mysql.format(query,table);

    connection.query(query, function(error,rows){
        if(error){
            console.log(error);
        }else{
            if(rows.length == 0){
                var query = "INSERT INTO ?? SET ?";
                var table = ["t_service"];
                query = mysql.format(query,table);
                connection.query(query, post, function(error, rows){
                    if(error){
                        console.log(error);
                    }else{
                        response.ok("Successfull add data service !", res);
                    }
                });
            }else{
                response.ok("have been Posted ! Duplicat entry",res);
            }
        }
    });
};


//count Total service
exports.totalservice = function (req, res) {
    connection.query('SELECT t_user.nama_user, t_service.tgl_service, t_montir.nama_montir, t_sparepart.nama_sparepart, t_sparepart.harga_sparepart, t_service.jumlah_sparepart, (hargaperjam + jumlah_sparepart * harga_sparepart) AS total_harga FROM t_service JOIN t_user JOIN t_montir JOIN t_sparepart WHERE t_service.id_user = t_user.id_user AND t_service.id_montir = t_montir.id_montir AND t_service.id_sparepart = t_sparepart.id_sparepart ORDER BY t_user.id_user ',
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.oknested(rows, res);
            }
        }
    )

}
//update t_service
exports.upservice = function (req, res) {
    var tgl = new Date();
    var id_us = req.body.id_us;
    var id_mon = req.body.id_mon;
    var jml_sprpt = req.body.jml_sprpt;
    var id_sprpt = req.body.id_sprpt;
    var id_ser = req.body.id_ser;
    
    connection.query('UPDATE t_service SET tgl_service=?, id_user=?, id_montir=?,id_sparepart=?, jumlah_sparepart=?  WHERE id_service=?',
        [ tgl, id_us, id_mon, id_sprpt, jml_sprpt,id_ser], 
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Successfull Update data service", res)
            }
        });
};




//=====================================================t_montir===========================ADMIN======================
//post input t_montir
exports.addmontir = function(req, res) {
    var post = {
        id_montir: req.body.id_montir,
        nama_montir: req.body.nama_montir,
        hargaperjam: req.body.hargaperjam
    }

    var query = "SELECT id_montir FROM ?? WHERE ??=?";
    var table = ["t_montir", "id_montir", post.id_montir];

    query = mysql.format(query,table);

    connection.query(query, function(error,rows){
        if(error){
            console.log(error);
        }else{
            if(rows.length == 0){
                var query = "INSERT INTO ?? SET ?";
                var table = ["t_montir"];
                query = mysql.format(query,table);
                connection.query(query, post, function(error, rows){
                    if(error){
                        console.log(error);
                    }else{
                        response.ok("Success add Montir", res);
                    }
                });
            }else{
                response.ok("Montir Already Exist!",res);
            }
        }
    });
};
//put edit t_montir
exports.upmontir = function (req, res) {
   
    var id = req.body.id;  
    var nm = req.body.nm;
    var hrg = req.body.hrg;
    
    connection.query('UPDATE t_montir SET  nama_montir=?,hargaperjam=? WHERE id_montir=?',
        [ nm,hrg,id], 
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Successfull Update data Montir", res)
            }
        });
};
//delete t_montir
exports.deletemontir = function(req, res){
    var id_montir = req.body.id_montir;
    connection.query('DELETE FROM t_montir WHERE id_montir=?', [id_montir],
    function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok("Successful deleted", res)
        }
    });
};
//=====================================================t_sparepart========================ADMIN======================
//post sparepart
exports.addsparepart = function(req, res) {
    var post = {
        id_sparepart:req.body.id_sparepart,
        nama_sparepart: req.body.nama_sparepart,
        harga_sparepart: req.body.harga_sparepart,
        satuan: req.body.satuan
    }

    var query = "SELECT nama_sparepart FROM ?? WHERE ??=?";
    var table = ["t_sparepart", "nama_sparepart", post.id_sparepart];

    query = mysql.format(query,table);

    connection.query(query, function(error,rows){
        if(error){
            console.log(error);
        }else{
            if(rows.length == 0){
                var query = "INSERT INTO ?? SET ?";
                var table = ["t_sparepart"];
                query = mysql.format(query,table);
                connection.query(query, post, function(error, rows){
                    if(error){
                        console.log(error);
                    }else{
                        response.ok("Berhasil menambahkan data Sparepart baru", res);
                    }
                });
            }else{
                response.ok("Sparepart sudah terdaftar!",res);
            }
        }
    });
};
//put
exports.upsparepart = function (req, res) {
    var id_sparepart = req.body.id_sparepart;
    var nama_sparepart = req.body.nama_sparepart;
    var harga_sparepart = req.body.harga_sparepart;
    var satuan = req.body.satuan;
    
    connection.query('UPDATE t_sparepart SET nama_sparepart=?, harga_sparepart=?, satuan=? WHERE id_sparepart=?',
     [nama_sparepart, harga_sparepart, satuan, id_sparepart],
    function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Success update data sparepart", res)
            }
        });
};
//delete
exports.deletesparepart = function(req, res){
    var id = req.body.id_sparepart;
    connection.query('DELETE FROM t_sparepart WHERE id_sparepart=?', [id],
    function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok("Have been deleted", res)
        }
    });
};
//=====================================================t_user=============================ADMIN======================
//post user || REGISTER || ADMIN
//put
exports.upuseradm = function (req, res) {
   
    var id_user = req.body.id_user;  
    var nama_user = req.body.nama_user;
    var email = req.body.email;
    var password = md5(req.body.password);
    var id_level = req.body.id_level;
    
    connection.query('UPDATE t_user SET nama_user=?,email=?,password=?,id_level=? WHERE id_user=?',
        [ nama_user,email,password,id_level,id_user], 
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Successfull Update data User", res)
            }
        });
};
//delete
exports.deleteuseradm = function(req, res){
    var id = req.body.id_user;
    connection.query('DELETE FROM t_user WHERE id_user=?', [id],
    function (error, rows, fields) {
        if (error) {
            console.log(error);
        } else {
            response.ok("Have been deleted !", res)
        }
    });
};
//=====================================================t_level============================ADMIN=====================
//post level
exports.addlvl = function(req, res) {
    var post = {
        id_level:req.body.id_level,
        nama_level: req.body.nama_level
    }

    var query = "SELECT nama_level FROM ?? WHERE ??=?";
    var table = ["t_level", "id_level", post.id_level];

    query = mysql.format(query,table);

    connection.query(query, function(error,rows){
        if(error){
            console.log(error);
        }else{
            if(rows.length == 0){
                var query = "INSERT INTO ?? SET ?";
                var table = ["t_level"];
                query = mysql.format(query,table);
                connection.query(query, post, function(error, rows){
                    if(error){
                        console.log(error);
                    }else{
                        response.ok("Success ADD new Level", res);
                    }
                });
            }else{
                response.ok("Level Already Exist",res);
            }
        }
    });
};

//put
exports.uplevel = function (req, res) {
   
    var id_level = req.body.id_level;
   var nama_level = req.body.nama_level;
    
    connection.query('UPDATE t_level SET nama_level=? WHERE id_level=?',
        [nama_level,id_level], 
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Successfull Update data Level", res)
            }
        });
};
//delete
