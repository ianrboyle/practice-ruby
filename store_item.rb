# # Use hashes with symbols to represent the following scenario:
# # You are the owner of a store that sells items (you decide what specifically).
# Each item has various properties such as color, price, etc.
# # Represent 3 items using hashes. Each hash should have the same keys with different values.
# # Be sure to use symbols for the keys. Try creating hashes using both types of
# hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

item1 = { color: "gray", price: 1000, name: "laptop" }

item2 = { color: "black", price: 200, name: "monitor" }

item3 = { :color => "white", :price => 5, :name => "notebook" }

puts item1[:color]

class Item
  attr_accessor :name, :color, :price

  def initialize(input_name, color, price)
    @name = input_name
    @color = color
    @price = price
  end

  def prints_info
    puts "#{@name}, #{@color}, #{@price}"
  end

  def inflation_price(inflation_rate)
    inflation_price = (price * inflation_rate) + price
    puts inflation_price
  end
end

item4 = Item.new("mug", "white", 2.5)

item4.prints_info
puts item4.name
item4.name = "cup"
puts item4.name
item4.inflation_price(0.05)
