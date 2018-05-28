function makeDeck(n) {
    // N is the number of decks....
    var ranks = new Array("A", "2", "3", "4", "5", "6", "7", "8", "9",
        "10", "J", "Q", "K");
    var suits = new Array("Clubs", "Diamonds", "Hearts", "Spades");
    var i, j, k;
    var m;
    m = ranks.length * suits.length;
    var deck = new Array(n * m);

    // Set array of cards.

    // Fill the array with 'n' packs of cards.

    for (i = 0; i < n; i++) {
        for (j = 0; j < suits.length; j++) {
            for (k = 0; k < ranks.length; k++) {
                deck[i * m + j * ranks.length + k] = [ranks[k], suits[j]];
            }
        }
    }
    console.log(deck);
    return deck;
}


function shuffle(array) {
  var currentIndex = array.length, temporaryValue, randomIndex;

  // While there remain elements to shuffle...
  while (0 !== currentIndex) {

    // Pick a remaining element...
    randomIndex = Math.floor(Math.random() * currentIndex);
    currentIndex -= 1;

    // And swap it with the current element.
    temporaryValue = array[currentIndex];
    array[currentIndex] = array[randomIndex];
    array[randomIndex] = temporaryValue;
  }

  return array;
}


//should be passed a shuffled stack
function deal(playerNumber, stack) {
  var players = {};

  players['you'] = stack.splice(0, 2);

  for (var i = 2; i <= playerNumber; i++) {
    players['cpu-' + i] = stack.splice(0, 2);
  }

  var table = {};

  table.flop = stack.splice(0, 3);
  table.turn = stack.splice(0, 1);
  table.river = stack.splice(0, 1);


  console.log(players);
  console.log(table);

}



// make 1 deck
deck = makeDeck(1);

deck = shuffle(deck);

console.log(deal(8, deck));
