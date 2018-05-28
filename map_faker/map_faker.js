console.log("map faker");
// Time to fool some archaeologists
// You are a villain trying to trap an adventuring archaeologist. Write a function 'makeFakeMap' that takes two numbers as arguments and returns an array of arrays to represent a map. It should be filled with the 'A' character, except for one, which should be an uppercase X(as below). The position of X should be determined randomly.
//
// makeFakeMap(5, 5);
//
// // Sample outputs:
//
// [
// ["A","A","A","A","A"],
// ["A","A","A","A","A"],
// ["A","A","X","A","A"],
// ["A","A","A","A","A"],
// ["A","A","A","A","A"]
// ];
//
// makeFakeMap(5, 5);
//
// [
// ["A","A","A","A","A"],
// ["A","A","A","A","A"],
// ["A","A","A","A","A"],
// ["A","A","A","A","X"],
// ["A","A","A","A","A"]
// ];
//
// makeFakeMap(5, 5);
//
// [
// ["A","A","A","A","A"],
// ["A","A","A","X","A"],
// ["A","A","A","A","A"],
// ["A","A","A","A","A"],
// ["A","A","A","A","A"]
// ];


var makeFakeMap = function(rows, columns, key) {
  var grid = [];
  for (var i = 0; i < 5; i++) {
    var row = "A".repeat(columns).split('');
    grid.push(row);

  }

  var rowsArr = Math.floor(Math.random() * (rows + 1));
  var columnsArr = Math.floor(Math.random() * (columns + 1));

  grid[rowsArr][columnsArr] = key;
  return grid;
}

makeFakeMap(5, 5, 'X');
