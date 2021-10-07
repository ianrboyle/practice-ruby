require "./item.rb"

class Food < Item
  attr_accessor :shelf_life
  include Out_Of_Stock

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end
