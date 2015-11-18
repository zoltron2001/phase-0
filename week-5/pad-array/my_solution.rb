# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

=begin

# 0. Pseudocode

# What is the input?
An array
An integer
(optional) string or number
# What is the output? (i.e. What should the code return?)
An array
# What are the steps needed to solve the problem?
Get size of array input
Compare array input to size
-if equal return original
-if size is greater, return array padded with value, unless value ungiven (return nil)
=end


# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) #destructive
  if array.size == min_size
    return array
  else
    while min_size >= array.size
      array << value
      min_size -= 1
    end
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  if array.size == min_size
    return new_array
  else
    while min_size > new_array.size
      new_array << value
    end
  end
  return new_array
end
=end
# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
# if we're not changing the size of the array, the there's nothing to do
  if array.size == min_size
    return array
# but if we do reduce the size of the array
# then add new elements (if given) to the array
# the array will grow in size
# we can stop growing it when it reaches the same size as our "min_size"
  else
    while min_size > array.size
      array << value
    end
  end
  return array
end

# do the same thing in the second method
# but replace array with array.dup to avoid affecting the original
def pad(array, min_size, value = nil) #non-destructive
  pad!(array.dup, min_size, value)
end

p pad([1,2,3], 5)

# 4. Reflection 

