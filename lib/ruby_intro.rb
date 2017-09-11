# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  if arr.length == 0
    return 0
  else 
    sum_ = 0
    i=0
    while i<arr.length do
      sum_= sum_ + arr[i]
      i+=1
    end
    return sum_
  end
end


def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
    
  elsif arr.length ==1
    return arr[0]
  
  else
    sorted_array = arr.sort.reverse
    return sorted_array[0]+sorted_array[1]
    
  end   # end for if
end     # end for def

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length <= 1
    return false 
  else
    i=0
    while i < arr.length do
      j=i+1
      while j<arr.length do
        if (arr[i] + arr[j]) == n
          return true
        end     # if condition + termination
      j+=1
      end       # j while termination
    i+=1
    end         # i while termination
  return false
  end           # if arr.length <=1 termination
end             # def sum_to_n? termination

# Part 2

def hello(name)
  # YOUR CODE HERE
  output_string = "Hello, "+name
  return output_string
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.upcase
  if /[\p{L}&&[^aeiouAEIOU]]/ =~s[0]
    return true
  else
    return false
  end # end for if
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ''                    #invalid binary ''
    return false
  elsif s.count('01') == s.size # it is valid binary a100
    d = s.to_i(2)
    if d % 4 == 0# it is multiple of 4
      return true 
    else 
      return false
    end
  else  
    return false
    
  end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price, :price_as_string
  
  def initialize(isbn, price)
    @initialized = true
    @isbn = isbn
    @price = price
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
