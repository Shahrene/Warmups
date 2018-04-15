console.log('The Board');

var pattern = "# ";
//var string2 = " # # # # # # # #";

var grid = ""
 for (var i = 0; i < 8; i++) {
   grid += (pattern.repeat(8) + "\n");
   if (pattern === "# ") {
     pattern = " #"
   } else {
     pattern = "# "
   }
}
console.log(grid);
