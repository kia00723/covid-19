let express = require('express');
var knex = require('../config/knex');
let router = express.Router();
router.use(function(req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST');
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-with,content-type');
    res.setHeader('Access-Conrol-Allow-Credentials', true);
    next();
});
/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('index', { title: 'Express' });
});
router.get('/get_userall', async function(req, res, next) {
    try {
        let data = await knex.knex('user_register').select();
        res.json(data);
    } catch (error) {
        res.json(error);
    }
});
router.post('/get_user_byid', async function(req, res, next) {
    try {
        let id = req.body.id
        let data = await knex.knex('user_register').where({ id: id }).select();
        res.json(data);
    } catch (error) {
        res.json(error);
    }
});
router.post('/add_userdetails', async function(req, res, next) {
    try {
        let data = await knex.knex('user_register').insert({ first_name: req.body.first_name, sur_name: req.body.sur_name, id_card: req.body.id_card, sex: req.body.sex, birthdate: req.body.birthdate, telephone_number: req.body.telephone_number, address: req.body.address, sub_district: req.body.sub_district, district: req.body.district, province: req.body.province, create_date: new Date(), create_at: 'Admin', modify_date: new Date(), modify_at: 'Admin' });
        res.json(data);
    } catch (error) {
        res.json(error);
    }
});
router.post('/update_userdetails', async function(req, res, next) {
    try {
        let data = await knex.knex('user_register').where({ id: req.body.id }).update({ first_name: req.body.first_name, sur_name: req.body.sur_name, id_card: req.body.id_card, sex: req.body.sex, birthdate: req.body.birthdate, telephone_number: req.body.telephone_number, address: req.body.address, sub_district: req.body.sub_district, district: req.body.district, province: req.body.province, create_date: new Date(), create_at: 'Admin', modify_date: new Date(), modify_at: 'Admin' });
        res.json(data);
    } catch (error) {
        res.json(error);
    }
});
router.post('/dalete_userdetails', async function(req, res, next) {
    try {
        let data = await knex.knex('user_register').where({ id: req.body.id }).del();
        res.json(data);
    } catch (error) {
        res.json(error);
    }
});

module.exports = router;