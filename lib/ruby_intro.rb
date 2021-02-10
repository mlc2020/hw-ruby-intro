# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  twoele = arr.max(2)
  twoele.sum
end

def sum_to_n? arr, n
  return false if arr.size <= 1
  arr.combination(2).any? {|x,y| x+y == n}
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /^(?:[01]*00|0)$/i.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    if isbn.empty? || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string
    @price = "$%.2f" % [@price]
  end
end
