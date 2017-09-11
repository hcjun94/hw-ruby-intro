# When done, submit this entire file to the autograder.

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price, :price_as_string
  
  def initialize(isbn, price)
    @initialized = true
    @isbn = isbn
    @price = price
    @price_as_string
    if @isbn =="" || @price <=0.0
      raise ArgumentError
    end
  end #end initialize
  
  def isbn
    return @isbn
  end #end def isbn
  
  def price
    return @price
  end #end def price
  
  def price_as_string
    @price_as_string = "$"+"%0.2f" % @price.to_s
    return @price_as_string
  end

  #endofClass
end
