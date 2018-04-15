console.log('Mini Golf');

var bobScores = [3, 2, 6, 11, 9, 2, 6, 9, 10];
var jimboScores = [5, 12, 9, 22, 13, 7, 16, 10, 11];
var fishScores = [2, 2, 4, 5, 4, 3, 6, 4, 1];
var par = [3, 4, 5, 5, 3, 3, 4, 3, 5];
var bobTotal = 0;
var jimboTotal = 0;
var fishTotal = 0;
var parTotal = 0;

var totalScores = function() {
  var total
  for (var i = 0, i < 9; i++) {
    total += bobScores[i];
    total += jimboScores[i];
    total += fishScores[i];

console.log("Bob's Total Score: " + bobTotal)(" Jimbo's Total Score: " + jimboTotal);
