const { connect } = require("../routes/routes");

const config = require('../config/database')
const mysql = require('mysql')
const pool = mysql.createPool(config)

pool.on('error', (err)=>{
console.log(err);
});

module.exports= {
    getIndex(req, res){
        pool.getConnection(function(err, connection) {
            if(err) throw err;
            connection.query(`Select * from penjab;`), function (error, results) {
                if(error) throw error;
                res.send({
                    success: true,
                    message: "Berhasil ambil data",
                    data: results
                })
            }
        })
        connect.release();
    }
}

