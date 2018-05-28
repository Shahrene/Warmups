// # # Alternating Split
// #
// # For building the encrypted string:
// # * Take every 2nd character from the string, then the other characters that are not every 2nd character, and concat them as a new String.
// # * Do this `n` times!
// #
// # Examples:
// # ```
// # "This is a test!", 1 -> "hsi  etTi sats!"
// # "This is a test!", 2 -> "hsi  etTi sats!" -> "s eT ashi tist!"
// # ```
// #
// # Write two methods:
// # ```
// # function encrypt(text, n)
// # function decrypt(encryptedText, n)
// # ```
// #
// # For both methods:
// # * If the input-string is null or empty return exactly this value!
// # * If n is <= 0 then return the input text.


// Take letter of string --> is even? add it to my array of even letters
// if no, add to my list of odd letters
// is there more letters? if yes repeat above until no new letters
// add two arrays together and output joined new encrypted string.




oddLetters = []
evenLetters = []

function encrypt(text, n) {
  for (var i = 0; i < text.length; i += 2)
    oddLetters.push(text.charAt(i)); {
  for (var i = 1; i < text.length; i += 2)
    evenLetters.push(text.charAt(i));
  }
}

encrypt("This is a test!", 1)

encryptedText = evenLetters.concat(oddLetters).join('')


function decrypt(text, n) {
  for (var i = 0; i < text.length; i += 2)
    oddLetters.push(text.charAt(i)); {
  for (var i = 1; i < text.length; i += 2)
    evenLetters.push(text.charAt(i));
  }
}

decrypt("hsi  etTi sats!", 4)
decryptedText = evenLetters.concat(oddLetters).join('')
