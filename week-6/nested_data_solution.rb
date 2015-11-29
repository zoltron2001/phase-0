# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# p array[1][2][0]
p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
p nested_data[:array][1][:hash]
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# initial
# number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map! do |x|
#   if x.kind_of?(Array)
#     x.map! do |y|
#       y += 5
#     end
#   else
#     x += 5
#   end
# end
# p number_array

# refactored

number_array = [5, [10, 15], [20,25,30], 35]

# iterate through array
number_array.map! do |x|
  # if element is an array, then iterate through that array
  if x.kind_of?(Array)
    x.map! do |y|
      y += 5
    end
  # otherwise affect the element
  else
    x += 5
  end
end
p number_array

# Bonus:

# initial
# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! do |name|
#   if name.kind_of?(Array)
#     name.map! do |also_name|

#       if also_name.kind_of?(Array)
#         also_name.map! do |also_also_name|
#           also_also_name += "ly"
#         end
#       else
#         also_name += "ly"
#       end
#     end 
#   else
#     name += "ly"
#   end
# end
# p startup_names

# refactored
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |name|
  # 1st level array values as a name
  if name.kind_of?(Array)
    # Check if 1st level value is an array and if it is
    name.map! do |also_name|
      # Map the second level array values as also_name
      if also_name.kind_of?(Array)
        # Check if second level value is an array and if it is
        also_name.map! do |also_also_name|
          # Map the third level value as also_also_name
          also_also_name += "ly"
          # Add ly to also also name
        end
        # End the name
      else
        also_name += "ly"
      end
    end 
  else
    name += "ly"
  end
end
p startup_names

## Reflect
=begin

  What are some general rules you can apply to nested arrays?
    
    Work from the outermost array inward. Count from 0 up.

  What are some ways you can iterate over nested arrays?
    
    We used conditionals/flow control to determine whether an 
    element was an array or not. Assuming it was not an array, 
    we iterated through it with .map.

  Did you find any good new methods to implement or did you re-use 
  one you were already familiar with? What was it and why did you 
  decide that was a good option?

    We used .map - which we were at least vaguely familiar with. 
    At first we tried .each, but that returned an undefined 
    method. Both methods iterate, however array#map will return 
    a new array with altered values.

=end