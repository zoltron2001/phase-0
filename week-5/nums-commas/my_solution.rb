# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# => a positive integer

# What is the output? (i.e. What should the code return?)
# => a comma-separated integer as a string

# What are the steps needed to solve the problem?
=begin

convert number into string
  get length of string
IF it's 3 characters or shorter output the string
ELSE split string into characters
  place characters in an array
  insert a comma in-between characters
    commas should be between every third character
    unless there are less than 3 characters left
  combine array into a full string
  output string

1   2   3   4   5   6   7   8
-8 -7  -6  -5  -4  -3  -2  -1

1   2   3   4   5 , 6   7   8
-9 -8  -7  -6  -5-4-3  -2  -1

1   2 , 3   4   5 , 6   7   8
-10 9-8-7  -6  -5-4-3  -2  -1

=end

# 1. Initial Solution
=begin
def separate_comma(int)
# output becomes the integer which is converted to a string
  output = int.to_s
  return output if output.length <=3
# if we get here, it's a "long number" and we'll send it to an array to add commas
  array = output.split("")
# count from right to left to figure out where commas should go
  count = -4
  total_length = -1*(array.length)
  until count < total_length
    array.insert(count, ",")
    count -= 4
# bump the total length size since we added a comma
    total_length -= 1
  end
# rejoin the array into a single string and output
  return array.join
end
=end
# 2. Refactored Solution

def separate_comma(int)
# convert integer to string, then split the characters up into an array
  array = int.to_s.split("")
# count from right to left to figure out where commas should go
  count = -4
  total_length = -1*(array.length)
  until count < total_length
    array.insert(count, ",")
    count -= 4
# bump the total length size since we added a comma
    total_length -= 1
  end
# rejoin the array into a single string and output
  return array.join
end

# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?

  Initially, I just wrote out the steps. Inevitably, I got stuck on the "insert comma" bit and had to "draw" it out in my pseudocode.

Was your pseudocode effective in helping you build a successful initial solution?

  Yeah definitely. It wasn't far off from the solution. Some parts were refactored out, but the organization remained the same.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

  I didn't use new methods, I just removed unnecessary lines and re-wrote things in a more succinct way. I did find a more efficient solution involving reversing string, splitting it every third character, and recombining/reversing with a comma inbetween. But it had nothing to do with my ideas, so I felt like I would have been plagerizing. Regardless, I feel like I understand .split, .reverse, and .join now.

How did you initially iterate through the data structure?

  The very first attempts were from left to right. And even when I ended up going from right to left, I was trying to do it by threes, or failing to realize that the array was growing in size.

Do you feel your refactored solution is more readable than your initial solution? Why?

Yeah, I think so, but neither are too bad. There's less to read in the refactored one, and one fewer variable to keep track of.

=end