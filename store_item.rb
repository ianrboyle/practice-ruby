# # Use hashes with symbols to represent the following scenario:
# # You are the owner of a store that sells items (you decide what specifically).
# Each item has various properties such as color, price, etc.
# # Represent 3 items using hashes. Each hash should have the same keys with different values.
# # Be sure to use symbols for the keys. Try creating hashes using both types of
# hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

items = [{ color: "gray", price: 1000, name: "laptop" }, { color: "black", price: 200, name: "monitor" }, { :color => "white", :price => 5, :name => "notebook" }]

puts items[0][:color]

class Item
  attr_accessor :name, :color, :price

  def initialize(input_options)
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
  end

  def prints_info
    puts "#{@name}, #{@color}, #{@price}"
  end

  def inflation_price(inflation_rate)
    inflation_price = (price * inflation_rate) + price
    puts inflation_price
  end
end

item4 = Item.new({ name: "mug", color: "white", price: 2.5 })

item4.prints_info
puts item4.name
item4.name = "cup"
puts item4.name
item4.inflation_price(0.05)

# items.each_with_index do |item, index|
#   p item[index]
# end

item5 = Item.new({ name: items[0][:name], color: items[0][:color], price: items[0][:price] })

p item5.name
