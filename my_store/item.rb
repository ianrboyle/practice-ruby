require "./out_of_stock.rb"

class Item
  attr_accessor :name, :color, :price, :quantity

  include Out_Of_Stock

  def initialize(input_options)
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
    @quantity = input_options[:quantity]
  end

  def prints_info
    puts "#{@name}, #{@color}, #{@price}, #{@quantity}"
  end

  def inflation_price(inflation_rate)
    inflation_price = (price * inflation_rate) + price
    puts inflation_price
  end
end
