var express = require('express');
var auth = require('./auth');
var router = express.Router();
var verifikasi = require('./verifikasi');

//daftarkan menu registrasi
router.post('/api/v1/register', auth.registrasi);
router.post('/api/v1/login', auth.login);

//alamat yang perlu otorisasi
router.get('/api/v1/rahasia', verifikasi(), auth.halamanrahasia);

//=====================================================t_service==========================USER======================
//add data t_service
router.post('/api/v1/user/addservice',verifuser(),auth.addservice);
router.get('/api/v1/user/totalservice',verifuser(), auth.totalservice);
router.put('/api/v1/user/updateservice',verifuser(), auth.upservice);

//=====================================================t_montir===========================ADMIN======================
//post input t_montir
//put edit t_montir
//delete t_montir
//=====================================================t_sparepart========================ADMIN======================
//post sparepart
//put
//delete
//=====================================================t_user=============================ADMIN======================

//post user
//put
//delete
//=====================================================t_level============================ADMIN=====================
//post level
//put
//delete


module.exports = router;