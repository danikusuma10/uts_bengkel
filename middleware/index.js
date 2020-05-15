var express = require('express');
var auth = require('./auth');
var router = express.Router();

//panggil fungsi
var verifi = require('./verif');

var user = verifi.verifuser();
var admin = verifi.verifadmin();


//==============================================================MENU REGISTRASI USER===============================
router.post('/api/v1/register', auth.register);
router.post('/api/v1/login', auth .login);

//=====================================================t_service==========================USER======================
//add data t_service
router.post('/api/v1/user/addservice',user, auth.addservice);
router.get('/api/v1/user/totalservice',user, auth.totalservice);
router.put('/api/v1/user/updateservice',admin, auth.upservice);

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