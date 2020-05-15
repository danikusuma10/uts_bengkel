const jwt = require('jsonwebtoken');
const config = require('../config/secret');


function verifuser(){
    return function(req, rest, next){
        var lvl = req.body.lvl;
        //cek authorization header
        var tokenWithBearer = req.headers.authorization;
        if(tokenWithBearer) {
            var token = tokenWithBearer.split(' ')[1];

            //verif
            jwt.verify(token, config.secret, function(err, decoded){
                if(err){
                    return rest.status(401).send({auth:false, message:'No Detected Token'});
                }else {
                    if(lvl == 2 ){
                        req.auth = decoded;
                        next();
                    }else {
                        return rest.status(401).send({auth:false, message:'FAILED AUTHORIZATION Youre Admin !'});
                    }
                }
            });
        }else {
            return rest.status(401).send({auth:false, message:'Token Not available'});
        }
    }
}

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
                    return rest.status(401).send({auth:false, message:'No Detected Token!'});
                }else {
                    if(lvl == 1 ){
                        req.auth = decoded;
                        next();
                    }else {
                        return rest.status(401).send({auth:false, message:'FAILED authorize Youre User !'});
                    }
                }
            });
        }else {
            return rest.status(401).send({auth:false, message:'Token Not Available'});
        }
    }
}




module.exports = verifadmin;
module.exports = verifuser;