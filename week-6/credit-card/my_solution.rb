# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [4] hours on this challenge.

# Pseudocode

# Input: 16 digits
# Output: Boolean value true if it's a valid credit card 
# Steps:
# 1. Every other number except the last number gets doubled
# 2. Split double digit numbers into individual digits
# 3. Sum all doubled digits and add individual digits from two digit numbers
# 4. Check if sum is evenly divisible by ten.
# 5. Return true if sum is evenly divisible by 10

# 4  4  0  8  0  4  1  2  3  4  5  6  7  9  0  1
# 8  4  0  8  0  4  2  2  6  4  10 6  14 9  0  1

# Initial Solution

# class CreditCard

#   def initialize(digits)
#     @number = digits.to_s.split('').map {|element| element.to_i}
#     if @number.size != 16
#     	raise ArgumentError 
#     end
#   end
  
#   def check_card
      
#       def double_every_other
#         digit = 0
#         while digit < 15
#           @number[digit] *= 2
#           digit += 2
#         end
#       end

#       double_every_other

#       def split_doubles
#         @number = @number.join.to_s.split('').map {|element| element.to_i}
#       end
      
#       split_doubles
      
#       def sum_all
#         @total = 0
#         @number.each do |item|
#           @total += item
#         end
#       end

#       sum_all

#     if @total % 10 == 0
#       return true
#     else
#       return false
#     end
  
#   end
# end

# Refactored Solution

class CreditCard

  def initialize(digits)
    @total = 0
    # put digits in an array
    # => turn digits into a string
    # => put string into an array, each character is an element
    # => turn each element into an integer
    @number = digits.to_s.split('').map {|element| element.to_i}
    # raise an error if the number given didn't have 16 digits
    if @number.size != 16
      raise ArgumentError 
    end
  end
  
  def double_every_other
    digit = 0
    # double every other number in the array
    while digit < 15
      # double the digit
      @number[digit] *= 2
      # skip the next digit
      digit += 2
    end
  end

  def split_doubles
    # split all the double digit numbers into single digits
    # => join all the numbers into a single string
    # => split them back into an array by character
    # => turn them back into an integer
    @number = @number.join.to_s.split('').map {|element| element.to_i}
  end
      
  def sum_all
    # sum all the numbers in the array
    @number.each do {|item| @total += item}
  end

  def check_card
    
    # run all of the methods that rspec won't know to run
    double_every_other
    split_doubles
    sum_all
    # if the summation devides evenly by 10, the card is good
    @total % 10 == 0
  
  end
end


#DRIVER CODE

# digits = 4408041234567901
# #should equal 60
# card = CreditCard.new(digits)
# p card.check_card

# # Reflection
=begin

  What was the most difficult part of this challenge for you and 
  your pair?
    
    None of the heavy lifting was that bad. It took us about an 
    hour to get the code to where we wanted it. The problem was, 
    rspec didn't know to call the three other methods we created. 
    So we spent an additional hour second guessing the code and 
    life in general. I ended up figuring out the code as well as 
    life a couple days later.

  What new methods did you find to help you when you refactored?
    
    I didn't find any new methods while refactoring. Although 
    I did become better aquainted with .join, .split, and .map 
    while working on the initial solution. During

  What concepts or learnings were you able to solidify in this 
  challenge?
    
    I learned quite a bit about calling methods within classes. 
    I called them for the driver code (ex. p class.method). And 
    I also called them within my methods to utilize other 
    methods within the same class.

=end