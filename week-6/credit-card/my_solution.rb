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
  end
  
  def double_every_other
    digit = 0
    while digit < 15
      @number[digit] *= 2
      digit += 2
    end
  end
  
  def split_doubles
    @number = @number.join.to_s.split('').map {|element| element.to_i}
  end
  
  def sum_all
    @total = 0
    @number.each {|item| @total += item}
  end
  
  def check_card
    @total % 10 == 0
  end

end

# Refactored Solution

#DRIVER CODE

# digits = 3958472948371047

# card = CreditCard.new(digits)
#  card.double_every_other
# p card.split_doubles
# p card.sum_all
# p card.check_card

# Reflection