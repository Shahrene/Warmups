// const express = require('express')
//
// const app = express()
//
// const _ = require('lodash')
//
// const request = require('request')
//
// const PORT = 4567;
//
// app.listen(PORT, () => {
//   console.log(`listening on ${PORT}`)
// })
//
// app.set('views', './views')
// app.set('view engine', 'ejs')
//
// app.use(express.static('public'))
//
//
// app.get('/', (req, res) => {
//
//     var url = "http://api.openweathermap.org/data/2.5/weather?q={lat}&lon={lon}&units=metric&APPID=150fe397273b0898d4e8b500237412d9"
//     var lat, lon;
//
//
//
//     function getLocation(){
//       if (navigator.geolocation) {
//         navigator.geolocation.getCurrentPosition(successFunction() {
//           var lat = "lat=" + position.coords.latitude;
//           var lon = "lon=" + position.coords.longitude;
//           getWeather(lat, lon);
//         });
//       } else {
//         console.log("Geolocation is not supported by this browser.");
//       }
// });

var lat, lon;
var openWeatherMap = 'http://api.openweathermap.org/data/2.5/weather'

navigator.geolocation.getCurrentPosition(function(position) {
  lat = position.coords.latitude;
  lon = position.coords.longitude;

  $.ajax({
    url: openWeatherMap,
    dataType: "json",
    data: {
      APPID: 'yourID',
      lat: lat,
      lon: lon,
      units: 'metric'
    }
  }).done(function(res) {
    var temp = res.main.temp;
    var location = res.name;
    console.log(temp);
    console.log(location);
    $('#temp').text(temp);
    $('#location').text(location);
  })

});
