# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
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