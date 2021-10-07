# # Use hashes with symbols to represent the following scenario:
# # You are the owner of a store that sells items (you decide what specifically).
# Each item has various properties such as color, price, etc.
# # Represent 3 items using hashes. Each hash should have the same keys with different values.
# # Be sure to use symbols for the keys. Try creating hashes using both types of
# hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

items = [{ color: "gray", price: 1000, name: "laptop" }, { color: "black", price: 200, name: "monitor" }, { :color => "white", :price => 5, :name => "notebook" }]

puts items[0][:color]



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

item4 = Item.new({ name: "mug", color: "white", price: 2.5, quantity: 0 })

item4.prints_info
puts item4.name
item4.name = "cup"
puts item4.name
item4.inflation_price(0.05)

item5 = Item.new({ name: items[0][:name], color: items[0][:color], price: items[0][:price] })

p item5.name

#we want a new variable for each item in the array items (item1, item2, item3, etx)

variables = []
items.each_with_index do |item, index|
  variable = "item#{index}"
  variables << variable
end

puts variables

class Food < Item
  attr_accessor :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end

banana = Food.new({ name: "banana", color: "yellow", price: 1, shelf_life: "5 days" })
puts banana.shelf_life

item4.quantity_to_zero
