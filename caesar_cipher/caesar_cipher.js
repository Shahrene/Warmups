console.log('caesar cipher');

//var caesarCipher = function() {
  var code = 'DEFGHIJKLMNOPQRSTUVWXYZABC';
  var decoded = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  var message = "FRZDUGV GLH PDQB WLPHV EHIRUH WKHLU GHDWKV, WKH YDOLDQW QHYHU WDVWH RI GHDWK EXW RQFH";
  var decodedMessage = " ";
// work out how long the string is
  for (var i = 0; i < message.length; i++) {
// declare variable so loop will run through each letter
    var letter = message[i];
// include spaces and commas
    if (letter !== " " && letter !== ",") {
// declare variable to look at index of each letter      
      var index = code.indexOf(letter)
      decodedMessage += decoded[index];
  } else {
      decodedMessage += letter;
  }
}
//output new string

console.log(decodedMessage);
