# Dice
# Write a program using classes to generate a standard dice roll.
#
# Dice.roll
# # => 6
# Note: the code above is calling a class method of Dice called "roll". It is not an instance method e.g. Dice.new.roll. Google "ruby class methods" before proceeding with the problem
#
# It should give you a different result each time.
#
# Dice.roll
# # => 5
# Dice.roll
# # => 2
# When you pass in a number, it rolls the dice that many times, and returns you the array of rolled dice
#
# Dice.roll(3)
# # => [2,5,1]
# Extension
# Write a method called total you can chain directly after Dice.roll(n), and will return you the dice and the total, like so:
# Dice.roll(4).total
# # => [[6,3,2,4], 15]
# Note: To achieve the above, you will need to change the Dice.roll(n) method, so that it no longer returns the array.
#
# Display die faces after rolling.
# ________
# | *  * |
# | *  * |
# ________
# is it a single roll or mulitple roll? (if statement/optional parameter)
# if single roll once, rand number, return roll
# if no, another roll, loop til true
# once false return the array of multiple rolls

require 'pry'

class Dice
  def self.roll(num=1)
      roll_vals = num.times.map do
      rand(1..6)
  if numm == 1
    roll_vals.first
  else
    roll_vals
  end
  end
end
binding.pry
puts Dice.roll(num)

#num == 1 ? roll_vals.first : roll_vals    is alt statement instead of if statement
