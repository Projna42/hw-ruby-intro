# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # this method sums the elements of an array
  sum = 0 #initializing
  array.each{|x| sum += x} #adding the elements
  return sum #returns summation, if array is empty, returns zero.
end

def max_2_sum(array)
  # This method sums the 2 largest elements of an array
  sum = 0 #initializing
  array.sort!  #sorting in ascending order
  if array.length != 0 #checking empty array
    if array.length>1
      sum += array[-1] #the largest element
      sum += array[-2] #the second largest element 
    else
      sum +=array[-1] #incase array has 1 element
    end
  end
  return sum
end

def sum_to_n?(arr, n)
  # Checks whether summation of two numbers of an array equals the given number
  flag =0 #when this becomes 1, we have such two numbers in the array
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
  # returns 'Hello, name'
  return "Hello, "<< name
  
end

def starts_with_consonant?(s)
  # Finds whether the given string starts with consonant
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
  # checks if the string is binary number divided by 4
  if s.length == 0
    return false
  else
    if s =~ /[^10]/ #checks if the string has charachters other than '10'
      return false
      
    elsif s.to_i(2)%4 != 0 #checks if the binary number is dividable by 4
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
  
  def price_as_string #pring price of the book to the two decimal point
    return "$%.2f" % @price
  end
  
end
