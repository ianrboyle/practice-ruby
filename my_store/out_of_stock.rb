module Out_Of_Stock
  def quantity_to_zero
    if @quantity == 0
      puts "We are out of that item."
    else
      puts "We have that item!"
    end
  end
end