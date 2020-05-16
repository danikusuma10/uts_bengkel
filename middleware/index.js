var express = require('express');
var auth = require('./auth');
var router = express.Router();

//panggil fungsi
var verif = require('./verif');

var adm= verif.verifadmin();
var usr= verif.verifuser();

//==============================================================MENU REGISTRASI USER===============================
router.post('/api/v1/register', auth.register);
router.post('/api/v1/login', auth .login);

//=====================================================t_service==========================USER======================
//add data t_service
router.post('/api/v1/user/addservice',usr, auth.addservice);
router.get('/api/v1/user/totalservice',usr, auth.totalservice);
router.put('/api/v1/admin/updateservice',adm, auth.upservice);
//=====================================================t_montir===========================ADMIN======================
//post input t_montir
router.post('/api/v1/admin/addmontir',adm, auth.addmontir);
//put edit t_montir
router.put('/api/v1/admin/upmontir',adm, auth.upmontir);
//delete t_montir
router.delete('/api/v1/admin/deletemontir',adm, auth.deletemontir);
//=====================================================t_sparepart========================ADMIN======================
//post sparepart
router.post('/api/v1/admin/addsparepart',adm, auth.addsparepart);
//put
router.put('/api/v1/admin/upsparepart',adm, auth.upsparepart);
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