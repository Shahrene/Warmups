//
// var fs = require('fs');
//
//
// fs.readFile('data.js', function(err, data) {
// data.trim
// data.spilt('\n');
// });
//
//
// var record = {}
//   record[customerName] = [{
//     'product':
//     'unitPrice':
//     'units':
//     'totalPrice':
//   }]
//

const fs = require('fs');

const output = fs.readFileSync('manifest_20150602173208.txt', 'utf8')
                  .trim()
                  .split('\n')
                  .map(line => line.split(','))
                  .filter((line, i) => line[i] !== line[0])
                  .reduce((person, line) => {
                    person[line[0]] = person[line[0]] || []
                    person[line[0]].push({
                      product: line[1],
                      unitPrice: line[2],
                      units: line[3],
                      totalPrice: (line[2] * line[3]).toFixed(2)
                    })
                    return person;
                  }, {})
console.log(output);
