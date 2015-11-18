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
-if equal, return original
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
# if we're not changing the size of the array, then we're done
  if array.size == min_size
    return array
# but if we reduce the size of the array
# then add new elements (if given) to the array
# the array will grow in size
# we can stop growing it when it reaches the same size as min_size
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

# 4. Reflection 
=begin

Were you successful in breaking the problem down into small steps?

We were partially successful in this aim. I was happy with the step sizes in our 
pseudocode. I also felt like I had a good understanding of the code were were writing. 
We test frequently when making changes. Our failure was that we di not break the problem 
into as small of a size as was demonstrated in the Refactoring video (below).
https://talks.devbootcamp.com/refactoring-intro

Once you had written your pseudocode, were you able to easily translate it into code? 
What difficulties and successes did you have?

Yeah, it went pretty well. We purposefully left the pseudocode a bit vague so as not 
to bury ourselves in coding specifics. However, that also meant there were decisions 
to be made once we started coding. For example, we hadn't yet decided how we would 
"return array with padded value." It turned out, that bit of code would transform 
quite a bit throughout the process anyway.

Was your initial solution successful at passing the tests? If so, why do you think that is?
If not, what were the errors you encountered and what did you do to resolve them?

No it wasn't. One error had to do with linking the new array to the old array. Because 
we had only assigned the new array to the old, the new one was updating the old one. So 
in effect, we had two identical arrays the whole way through. It took us the longest to
solve this error. Eventually we researched until we encountered .dup, which when added 
to the original array in an assignment statement, does not affect the original. Example:

new_array = array.dup

The second error we were recieving had to do having too of the 'apple' strings returned. 
We had created a while loop that was shrinking min_size and simultaniously adding to 
the array. After we ensured our while loop was ouputting a properly sized array, all was 
well.

When you refactored, did you find any existing methods in Ruby to clean up your code?

No. We were already using ".dup". We did, however, realize that the first method could 
the heavy lifting for the second method.

How readable is your solution? Did you and your pair choose descriptive variable names?

I think the solution is very readable now that I've commented in explanations. However, 
our variable names are the ones we were given. No new ones were necessary.

What is the difference between destructive and non-destructive methods in your own words?

I think of destructive as editing the original and non-destructive as editing a copy. 
But it's important to note that here "original" refers to an array, rather than all the 
other inputs we're involving. So we're only being "destructive" or "non-destructive" to
whatever inputs are being outputted.

=end