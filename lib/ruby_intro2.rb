# When done, submit this entire file to the autograder.

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
