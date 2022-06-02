var express=require('express');
var path=require('path');
var bodyParser= require('body-parser');
const app = express();
const port = 8080;

app.use(bodyParser.urlencoded({extends: false}))
app.use(bodyParser.json())

const appRoute = require('./src/routes/routes')
app.use('/', appRoute)

app.listen(port, ()=> {
    console.log("Server Berjalan di port : "+port)
})