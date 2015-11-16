# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Sum of all numbers in the array
# Steps to solve the problem.
# => Define a method that takes an array
# => iterate on the array
# => add each number in the array to total
# => return total


# 1. total initial solution
=begin
def total(array)
    total = 0
    array.each do |coolnum|
       total += coolnum
end
return total
end
=end

# 3. total refactored solution
def total(array)
        array.inject(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: A sentence with a capitalized first letter and a period at the end.
# Steps to solve the problem.
# => Create method that takes the array as an argument
# => Capitalize first letter of first word
# => Join the strings together with a space
# => Add a period at the end.


# 5. sentence_maker initial solution
=begin
def sentence_maker(array)
       array[0].capitalize!
       p array.join(" ") + "."
end


=end
# 6. sentence_maker refactored solution
def sentence_maker(array)
        array.join(" ").capitalize << "."
end