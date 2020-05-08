'use strict';

module.exports = function(app){
    var jsonku = require('./controller');

    app.route('/')
    .get(jsonku.index);

//tampil semua data
    app.route('/tampilsemuasparepart')
        .get(jsonku.tampilsemuadatasparepart);
    
    app.route('/tampilsemuamontir')
        .get(jsonku.tampilsemuadatamontir);
   

//tampil berdasar id
    app.route('/tampilsparepart/:id')
        .get(jsonku.tampildtsparepartdasarid)
    
    app.route('/tampilmontir/:id')
        .get(jsonku.tampildtmontirdasarid)

   
}