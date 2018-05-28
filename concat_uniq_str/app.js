// Concat Unique Strings
// Solve in JavaScript
// Take 2 strings s1 and s2 each only containing letters from a to z. Return one new sorted string, the longest possible, containing distinct letters - each taken only once - from s1 and s2.
//
// We recommend using underscore.js to help with solving the problem: http://underscorejs.org/
//
// Example:
// s1 = "xyaabbbccccdefww"
// s2 = "xxxxyyyyabklmopq"
// longest(s1, s2) -> "abcdefklmopqwxy"

//take two strings of letters
//sort each into distinct letter


var s1 = "xyaabbbccccdefww"
var s2 = "xxxxyyyyabklmopq"


function longest(s1, s2) {
  return s1.concat(s2).split('').sort().map(function(letter, index, arr) {
    return letter == arr[index+1] ? undefined : letter;
  }).join('');
}
