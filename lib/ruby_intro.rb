# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # YOUR CODE HERE
  sum = 0
  array.each{|x| sum += x}
  return sum
end

def max_2_sum(array)
  # YOUR CODE HERE
  sum = 0
  array.sort!
  if array.length != 0
    if array.length>1
      sum += array[-1]
      sum += array[-2]
    else
      sum +=array[-1]
    end
  end
  return sum
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  flag =0
  for i in 0...arr.length
    if i != arr.length-1
      for j in i+1...arr.length
        if arr[i]+arr[j] ==n
          flag =1
        end
      end
    end
  
  end
  if flag==1
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "<< name
  
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  #s.downcase!
  if s.length !=0
    if "AEIOUaeiou?<>',?[]}{=-)(*&^%$#`~{}0123456789".include? s[0]
      return false
    else
      return true
    end
    
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  else
    if s =~ /[^10]/
      return false
      
    elsif s.to_i(2)%4 != 0 
      return false
    else
      return true
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  
  def initialize(isbn, price)
    if isbn.length == 0 || price <=0 
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    
    end
  end
  
  def isbn=(isbn) #setter
    @isbn = isbn
  end
  def isbn #getter 
    return @isbn
  end
  def price=(price)
    @price = price
  end
  def price
    return @price
  end
  
  def price_as_string
    return "$%.2f" % @price
  end
  
end
