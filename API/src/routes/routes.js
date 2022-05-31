const express = require('express')
const bodyParser = require('bodyParser')
const app = express()
const port = 8080;

app.use(bodyParser.urlendcoded({extends: false}))
app.use(bodyParser.json())

const appRoute = require('./src/routes/routes')
app.use('/', appRoute)

app.listen(port, ()=> {
    console.log("Server Berjalan di port : "+port)
})