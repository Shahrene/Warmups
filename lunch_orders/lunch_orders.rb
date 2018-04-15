require 'pry'


all_orders = ["name", "item"]

while true
puts "Enter a name for the order:  "
name = gets.chomp
all_orders[name].push(name)

puts "#{name} wants to order:  "
item = gets.chomp
  all_orders[item].push(item)

puts "Add another item to the order y/n?: "
  break if !gets.index ('y')
  end
end

puts all_orders
