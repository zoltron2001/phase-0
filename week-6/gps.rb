# Your Names
# 1) Zollie Barnes
# 2) Guide (Morgan O'Leary)

# We spent [.75] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  #   set error_counter to three why 3?
  if menu.has_key?(item_to_make) == false
     raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  # remainder of order_quantity/serving size will be mod? why?
  serving_size_mod = order_quantity % menu[item_to_make]

  # note left overs if mod has a remainder
  if serving_size_mod != 0
    return "Calculations complete: Make #{order_quantity/menu[item_to_make]} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients."
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

# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection