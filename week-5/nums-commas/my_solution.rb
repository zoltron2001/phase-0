# Numbers to Commas Solo Challenge

# I spent [1] hours on this challenge.

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
0   1   2   3   4   5   6   7
-8 -7  -6  -5  -4  -3  -2  -1
1   2   3   4   5 , 6   7   8
-9 -8  -7  -6  -5-4-3  -2  -1
1   2 , 3   4   5 , 6   7   8
-10 9-8-7  -6  -5-4-3  -2  -1

"1,23,45,678"
4
=end

# 1. Initial Solution

def separate_comma(int)
  output = int.to_s
  return output if output.length <=3
  array = output.split("")
  count = -4
  total_length = -1*(array.length)
  until count < total_length
    array.insert(count, ",")
    count -= 4
    total_length -= 1
  end
  return array.join
end

# 2. Refactored Solution

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

#for further refactoring http://codereview.stackexchange.com/questions/28054/separate-numbers-with-commas

# 3. Reflection