# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digits
# Output: Boolean value true if it's a valid credit card 
# Steps:
# 1. Every other number except the last number gets doubled
# 2. Split double digit numbers into individual digits
# 3. Sum all doubled digits and add individual digits from two digit numbers
# 4. Check if sum is evenly divisible by ten.
# 5. Return true if sum is evenly divisible by 10

# Initial Solution

class CreditCard

  def initialize(digits)
    @number = digits.to_s.split('').map {|element| element.to_i}
    if @number.size != 16
    	raise ArgumentError 
    end
    p "initialize"
    p @number
  end
  
  def double_every_other
    digit = 0
    while digit < 15
      @number[digit] *= 2
      digit += 2
    end
    p "double"
    p @double_every_other
  end
  
  def split_doubles
    @number = @number.join.to_s.split('').map {|element| element.to_i}
    p "split"
    p @number
  end
  
  def sum_all
    total = 0
    @number.each do |item|
      total += item
    end
    p "sum"
    p total
    p @number
    @total = total
  end
  
  def check_card
    p "check"
    p @total
    if @total % 10 == 0
      return true
    else
      return false
    end
  end

end

# Refactored Solution

#DRIVER CODE

digits = 4408041234567901
#should equal 60
card = CreditCard.new(digits)
p card.double_every_other
p card.split_doubles
p card.sum_all
p card.check_card

# Reflection

=begin
  
4  4  0  8  0  4  1  2  3  4  5  6  7  9  0  1
8  4  0  8  0  4  2  2  6  4  10 6  14 9  0  1

=end