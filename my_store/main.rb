require "./item.rb"
require "./food.rb"

items = [{ color: "gray", price: 1000, name: "laptop" }, { color: "black", price: 200, name: "monitor" }, { :color => "white", :price => 5, :name => "notebook" }]

item4 = Item.new({ name: "mug", color: "white", price: 2.5, quantity: 0 })
item5 = Item.new({ name: items[0][:name], color: items[0][:color], price: items[0][:price] })

item4.prints_info
puts item4.name
item4.name = "cup"
puts item4.name
item4.inflation_price(0.05)

p item5.name

#we want a new variable for each item in the array items (item1, item2, item3, etx)

variables = []
items.each_with_index do |item, index|
  variable = "item#{index}"
  variables << variable
end

puts variables

banana = Food.new({ name: "banana", color: "yellow", price: 1, shelf_life: "5 days" })
puts banana.shelf_life

item4.quantity_to_zero
