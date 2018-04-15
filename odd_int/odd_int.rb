
require 'pry'

# You have an array of integers. Find the integer that appears an odd number of times.

#There will always be only one integer that appears an odd number of times.

#For Example: [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5], answer is 5 since it is the only number that appears an odd number of times.

# loop  through array
# find numbers that appear even number of times
# cancel out those numbers
# print the remaining


def find_odd_int (arr)

  arr.uniq.find{ |num| arr.count(num).odd? }

end

arr = [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]

puts find_odd_int(arr)
