const router = require('express').Router();
const { data } = require('../controllers');

router.get('/', data.getIndex);


module.exports = router;