


// Proximity
// You and some friends usually play a gathering game (like a scavenger hunt) using geo-coordinates in the city, but it has gotten so popular that many people want to join in. One of your friends created an API. An API is a way for us to get data from a service. But now you want to build an App to help people decide what to find in the city.
//
// You are given the following set of data as a result from an API request and you want to sort those results in terms of proximity to your starting location (General Assembly).
//
// var startPoint = {name: "General Assembly", location: {lat: -37.818555, long: 144.959076}}
// var results = [
//   {name: "Melbourne Cricket Grounds", location: {lat: -37.819967, long: 144.983449}},
//   {name: "Flagstaff Gardens", location: {lat: -37.810680, long: 144.954352}},
//   {name: "Emporium Melbourne", location: {lat: -37.812433, long: 144.963787}},
//   {name: "City Library", location: {lat: -37.817039, long: 144.965983}},
//   {name: "Southern Cross Station", location: {lat: -37.818281, long: 144.952776}},
//   {name: "Sea Life Melbourne Aquarium", location: {lat: -37.820640, long: 144.958325}}
// ]
// Write a function to print the names of the results in order of closest to your location to furthest away.
//
// Also, explain what your assumptions are for the way you are calculating distance between the start point and the results.

//sort results order of closest to farthest from current location
//provide a current location with lat & long co-ordinates
//access each lat and long num and place into array
//compare lat and long nums with the lat and long numbers of the current location
//add each number and square
//sort each item in order of closest to fathest
//print out results in that order


var myResults = [ {name: "six pack of beer", location: {lat: 37.767182, long: -122.5}},
          {name: "whacky glasses", location: {lat: 37.767182, long: -122.51}},
          {name: "whiskey bottle", location: {lat: 37.767282, long: -122.49}},
          {name: "diving goggles", location: {lat: 37.770282, long: -122.503}},
          {name: "running shoes", location: {lat: 37.7669, long: -122.457}},
          {name: "paint brushes", location: {lat: 37.76800, long: -122.4580}}]

var currentLocation = [{name: "user", location: {lat: 38.1234, long: -123.3921}}]

results.map(function(res) {
  var latDiff = startPoint.location.lat - res.location.lat
  var longDiff = startPoint.location.long - res.location.long
  var dist = Math.sqrt(latDiff ** 2 + longDiff ** 2)
  return {name: res.name, dist: dist}
}).sort(function(res1, res2) {
  return res1.dist > res2.dist
}).forEach(function(result) {
  console.log(result.name)
})
