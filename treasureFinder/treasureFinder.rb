
map1 = [
["A","A","A","A","A"],
["A","A","A","A","A"],
["A","A","X","A","A"],
["A","A","A","A","A"],
["A","A","A","A","A"]
];

result = []

map1.each_with_index do |row row_index|
  if row.include?("X")
  result.push(row_index, row.index("X"))
  end
end

puts result

#treasureFinder(map1) // should return [2, 2];
