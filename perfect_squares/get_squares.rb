require 'pry'

def get_squares(arr)
  squares = []
  arr.each do |x|
    sqrt = Math.sqrt(x)**2
    squares.push(x)
  end
  return
end
    puts get_squares([1, 4, 9, 16])
