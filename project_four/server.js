
const express = require('express')

const app = express()

const _ = require('lodash')


const PORT = 4567;

var pgp = require('pg-promise')()
var db = pgp({
  database: 'moviesdb'
})
db.any('SELECT * FROM moviesdb')
    .then(function(movies) {
      console.log(movies[1].title)
    })


app.listen(PORT, () => {
  console.log(`listening on ${PORT}`)
  })

app.get('/', (req, res) =>{
  var options = {
    url:   ${req.query.searchterm}
    json: true
  }

//this part allows the pg promise module to make a request and get data back, and insert into database
request(options, (error, httpResp, body) =>)
db.none('INSERT INTO movies(title) VALUES($1, $2), RETURNING id',[body.Title])
  .then(data => {
    res.render('home')
  })
  .catch(error => {
      // error;
  });
})
