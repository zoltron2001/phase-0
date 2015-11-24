# Your Names
# 1) Zollie Barnes
# 2) Guide (Morgan O'Leary)

# We spent [.75] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # raise argument error if requested item is not on menu
  if menu.has_key?(item_to_make) == false
     raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  # determine what (if anything) will be left over from order
  leftovers = order_quantity % menu[item_to_make]

  # spit out order
  # note left overs if mod has a remainder
  if leftovers != 0
    return "Calculations complete: Make #{order_quantity/menu[item_to_make]} of #{item_to_make}, you have #{leftovers} leftover ingredients."
  else
    return "Calculations complete: Make #{order_quantity/menu[item_to_make]} of #{item_to_make}"
  end
end

# test/make requests for orders
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
  The importance of comments were reinfoced. I was able to see the code's 
  greater function much easier once I had written out a few comments. The guide 
  also taught me that one-line if-statements were frowned upon if the code 
  is too long.

Did you learn any new methods? What did you learn about them?
  Yeah, I learned about .at_value, although it seemed pretty convoluted given 
  its use.

What did you learn about accessing data in hashes? 
  Nothing too new here. It was re-affirmed that values can be accessed given 
  hash[key], however.

What concepts were solidified when working through this challenge?
  Minimalism and commenting. This code is so much easier to understand now. 

=end