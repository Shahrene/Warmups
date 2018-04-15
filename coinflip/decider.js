console.log('Coin Flip');

// var coinSide = ['heads', 'tails'];
// var heads = [];
// var tails = [];
// var coinFlip = function() {
//   var flipped = Math.floor(Math.random() * 2) == 0);
//   if (flipped === heads) {
//     return console.log("You flipped heads");
//   } else {
//     return console.log("You flipped tails");
//   }
// }
// var runCoinFlip = function() {
//   for (var i = 0; i < 5; i++){
//     var result = Math.floor(Math.random())
//    if (result === 0) {
//     return console.log("You flipped heads");
//   } else {
//     return console.log("You flipped tails");
//   }
// }
//


var image = document.querySelector(".imgTails");

var changeImage = function() {
  if (image.getAttribute('src') === "tails.jpg")
  {
    image.src = "heads.jpg";
  }
  else
  {
    image.src = "tails.jpg";
  }
}
