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
