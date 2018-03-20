console.log('Palindromes')

// function palindrome(word) {
//   var length = Math.floor(word.length/2);
//   for (var i = 0; i < length; i++)
//     if (word[i] !== word[word.length - i - 1])
//       return false;
//     return true;
// }
// console.log (palindrome('a but tuba'));

function palindrome(word) {
  var word = word.replace(' ', '').toLowerCase();
  var reverse = word.split('').reverse().join('');
  if (word === reverse) {
  return true;
} else {
  return false;
}
}
console.log (palindrome('A Santa at Nasa'));
