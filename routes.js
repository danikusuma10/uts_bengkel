'use strict';

module.exports = function(app){
    var jsonku = require('./controller');

    app.route('/')
    .get(jsonku.index);

//tampil semua data
    app.route('/tampilsemuasparepart')
        .get(jsonku.tampilsemuadatasparepart);
    app.route('/tampilsemuauser')
        .get(jsonku.tampilsemuadatauser);
    app.route('/tampilsemuamontir')
        .get(jsonku.tampilsemuadatamontir);
    app.route('/tampilsemuaservice')
        .get(jsonku.tampilsemuadataservice);

//tampil berdasar id
    app.route('/tampilsparepart/:id')
        .get(jsonku.tampildtsparepartdasarid)
    app.route('/tampiluser/:id')
        .get(jsonku.tampildtuserdasarid)
    app.route('/tampilmontir/:id')
        .get(jsonku.tampildtmontirdasarid)
    app.route('/tampilservice/:id')
        .get(jsonku.tampildtservicedasarid)

//tambah data
app.route('/tambah')
    .post(jsonku.tambahuser)
   
}