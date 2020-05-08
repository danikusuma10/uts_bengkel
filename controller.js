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