# Starbucks
# Write a program that holds on to coffee orders.
#
# c1 = Coffee.new('Darryl', 'latte', 'medium', 2)
# Write the .to_s method for this class so when you puts c1 you will have "Darryl's latte, medium, 2 sugars."
#
# Extension
# Starbucks always gets names wrong, however. Make the name a bad misspelling of the actual name when you create the order.
# puts c1
# # => "Barrel's latte, medium, 2 sugars."
# When you make an order, there should be a waiting time of anywhere between 2-5 minutes. You should be able to check if it's ready by calling c1.ready? and have the program yell out the order and the misspelled name if its ready.
#
# You should be able to mark the coffee as collected with c1.collected = true.
#
# List all of the coffees not collected.
#
# Add options to the coffee order, eg shot of hazelnut, whipped cream, chocolate syrup.

require 'pry'

class Coffee

  def initialize (coffee, sugars, size, name)
    @coffee = coffee
    @sugars = sugars
    @size = size
    @name = name
  end


  def to_s
    puts "#{@name}\'s #{@coffee}, #{@size}, #{@sugars} sugars"
  end

end

# extension

class Coffee
  attr_accessor :collected # allows you to set collected for a coffee

  def initialize(name, type, size, sugars)
    @name = misspell(name)
    @type = type
    @size = size
    @sugars = sugars
    @ordered_at = Time.now
    @wait_time = (120..300).to_a.sample # random 2 - 5 mins wait time
    @collected = false
  end

  def to_s
    "#{@name}'s #{@type}, #{@size}, #{@sugars} sugars"
  end

  def ready?
    if Time.now > @ordered_at + @wait_time
      puts "#{@type} for #{@name}!!!".upcase
    else
      puts "not ready yet #{@name}"
    end
  end

  private
  def misspell(name)
    consonants = ('a'..'z').to_a - %w(a e i o u)
    name[0] = consonants.sample
    return name
  end
end

coffees = []
coffees.push Coffee.new('Darryl', 'latte', 'medium', 2)
coffees.push Coffee.new('Samantha', 'mocha', 'large', 3)
coffees.push Coffee.new('Louis', 'cappuccino', 'small', 0)

puts coffees.first.ready?

coffees.first.collected = true
puts "Here are the coffees not yet collected:"
coffees.each do |coffee|
  unless coffee.collected
    puts coffee.to_s
  end
end
