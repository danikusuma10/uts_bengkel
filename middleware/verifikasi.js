const jwt = require('jsonwebtoken');
const config = require('../config/secret');


function verifadmin(){
    return function(req, rest, next){
        var lvl = req.body.lvl;
        //cek authorization header
        var tokenWithBearer = req.headers.authorization;
        if(tokenWithBearer) {
            var token = tokenWithBearer.split(' ')[1];

            //verifikasi
            jwt.verify(token, config.secret, function(err, decoded){
                if(err){
                    return rest.status(401).send({auth:false, message:'Token tidak terdaftar!'});
                }else {
                    if(lvl == 1 ){
                        req.auth = decoded;
                        next();
                    }else {
                        return rest.status(401).send({auth:false, message:'FAILED authorize admin !'});
                    }
                }
            });
        }else {
            return rest.status(401).send({auth:false, message:'Token tidak tersedia!'});
        }
    }
}




function verifuser(){
    return function(req, rest, next){
        var lvl = req.body.lvl;
        //cek authorization header
        var tokenWithBearer = req.headers.authorization;
        if(tokenWithBearer) {
            var token = tokenWithBearer.split(' ')[1];

            //verifikasi
            jwt.verify(token, config.secret, function(err, decoded){
                if(err){
                    return rest.status(401).send({auth:false, message:'Token tidak terdaftar!'});
                }else {
                    if(lvl == 2 ){
                        req.auth = decoded;
                        next();
                    }else {
                        return rest.status(401).send({auth:false, message:'FAILED AUTHORIZATION'});
                    }
                }
            });
        }else {
            return rest.status(401).send({auth:false, message:'Token tidak tersedia!'});
        }
    }
}




module.exports = verifuser;
module.exports = verifadmin;