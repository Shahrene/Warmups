console.log('caesar cipher');
//
// Quiz - Decode this message!
// Write a program to decode this message:
//
// FRZDUGV GLH PDQB WLPHV EHIRUH WKHLU GHDWKV, WKH YDOLDQW QHYHU WDVWH RI GHDWK EXW RQFH.
//
// This is a form of cryptography known as the Caesar Cipher. It has a shift parameter of 3.
//
// The alphabet is normally:
//
// ABCDEFGHIJKLMNOPQRSTUVWXYZ
//
// The alphabet with the shift parameter of 3 is now as follows:
//
// DEFGHIJKLMNOPQRSTUVWXYZABC

var caesarCipher = function() {
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
