'use strict';

var response = require('./res');
var connection = require('./koneksi');

exports.index = function (req, res) {
    response.ok("My app RestApi work", res)
};

//------------------------------------"TAMPIL SEMUA DATA"-------------------------------------
//GET data Tabel t_sparepart
exports.tampilsemuadatasparepart = function (req, res) {
    connection.query('SELECT * FROM t_sparepart', function (error, rows, fields) {
        if (error) {
            console.log(error);
        }
        else {
            response.ok(rows, res)
        }
    });
};
//GET data Tabel t_montir
exports.tampilsemuadatamontir = function (req, res) {
    connection.query('SELECT * FROM t_montir', function (error, rows, fields) {
        if (error) {
            console.log(error);
        }
        else {
            response.ok(rows, res)
        }
    });
};

//GET data Tabel t_user
exports.tampilsemuadatauser = function (req, res) {
    connection.query('SELECT * FROM t_user', function (error, rows, fields) {
        if (error) {
            console.log(error);
        }
        else {
            response.ok(rows, res)
        }
    });
};
//GET data Tabel t_service
exports.tampilsemuadataservice = function (req, res) {
    connection.query('SELECT * FROM t_service', function (error, rows, fields) {
        if (error) {
            console.log(error);
        }
        else {
            response.ok(rows, res)
        }
    });
};

//-----------------------------------------------------------------------------------------------







//------------------------------------"TAMPIL BERDASAR ID"---------------------------------------
//GET data Tabel sparepart berdasar id
exports.tampildtsparepartdasarid = function (req, res) {

    let id = req.params.id;
    connection.query('SELECT * FROM t_sparepart WHERE id=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            }
            else {
                response.ok(rows, res)
            }

        });
};

//GET data Tabel montir berdasar id
exports.tampildtmontirdasarid = function (req, res) {

    let id = req.params.id;
    connection.query('SELECT * FROM t_montir WHERE id=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            }
            else {
                response.ok(rows, res)
            }

        });
};

//GET data Tabel t_user berdasar id
exports.tampildtuserdasarid = function (req, res) {

    let id = req.params.id;
    connection.query('SELECT * FROM t_user WHERE id=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            }
            else {
                response.ok(rows, res)
            }

        });
};

//GET data Tabel t_service berdasar id
exports.tampildtservicedasarid = function (req, res) {

    let id = req.params.id;
    connection.query('SELECT * FROM t_service WHERE id=?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            }
            else {
                response.ok(rows, res)
            }

        });
};

//----------------------------------------------------------------------------------------------

//------------------------------------"TAMBAH DATA"---------------------------------------

//tambahkan data t_user
exports.tambahUser = function (req, res) {

    var id = req.body.id;
    var nama = req.body.nama;
    var email = req.body.email;
    var password = req.body.password;
    var level = req.body.level;

    connection.query('INSERT INTO tbl_user (id,nama,email,password,level) VALUES(?,?,?,?,?)',[id_user, nama_user, email, password, level],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil menambah Data", res)
            }
        });
};
