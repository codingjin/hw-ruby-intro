# Jin Huang
# UIN : 730009249

# Part 1

def sum arr
  # YOUR CODE HERE
  #arr.sum
  if (arr.size == 0)
    return 0
  else
    ss = 0
    arr.each do |element|
      ss += element
    end
    return ss
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size==0
    return 0
  elsif arr.size==1
    return arr[0]
  else
    temp = arr.max(2)
    return temp.sum
  end
      
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  size = arr.size
  if size==0
    return false
  elsif size==1
    return false
  else
    min2 = (arr.min(2)).sum
    max2 = (arr.max(2)).sum
    if (n>max2 || n<min2)
      return false
    else
      for i in 0...(size-1)
        for j in (i+1)...size
          if (arr[i]+arr[j] == n)
            return true
          end
        end
      end
      return false
    end
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s.empty?)
    return false
  end
  
  return /^[^aeiou\W]/i.match(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  unless (/^[01]+$/.match(s))
    return false
  end
  
  return /^[0]+$/.match(s)  || /00$/.match(s)
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  # constructor method
  def initialize(newisbn, newprice)
    if newisbn.empty?
      raise ArgumentError, "ISBN should nor be empty!"
    end
    
    if newprice<=0
      raise ArgumentError, "price should be greater than 0!"
    end
    
    @isbn, @price = newisbn, newprice
  end
  
  # classical get method
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  #classical set mothod
  def isbn=(newisbn)
    @isbn = newisbn
  end
  
  def price=(newprice)
    @price = newprice
  end
  
  def price_as_string
    sprintf("$%.2f", price)
  end


end
