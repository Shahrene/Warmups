console.log ('Granny Talk');

// Write a function 'grannyTalk' what takes a question as an argument
//and returns a string as her response.
//
// If you talk to Granny normally, she'll reply "SPEAK UP SONNY JIM"
//
var randomYear = function() {
return Math.floor(Math.random()*(1950 - 1930 + 1) + 1930)
}

var talk = prompt("Speak to Granny")

while (talk !== 'BYE'){
  if (talk===talk.toUppercase()){
    alert('NO, NOT SINCE ' + randomYear() + '\nWhat\'s that darling?')
  } else {
    talk = prompt('SPEAK UP HONEY!')
  }
}
alert('What\'s that honey, I didn\'t hear you.. zzz')

//If you talk to her in ALL CAPS, she'll reply "NO, NOT SINCE 1945"
//
// The year will be a random year between 1930 and 1950.


// If you say "BYE" to her she'll reply "What's that honey, I didn't hear you.."
