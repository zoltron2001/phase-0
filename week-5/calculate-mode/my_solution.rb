# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# array of numbers/strings
# What is the output? (i.e. What should the code return?)
# item that appears the most OR if equal freq, all of those
# What are the steps needed to solve the problem?

=begin

create hash based on key/value pairs
	each item is assigned to a key
	unless key already has that name
		increment by one
		that increment becomes value

sort hash by values

create array from keys that are big nums

=end

# 1. Initial Solution

=begin
def mode(array)
  array_counter = Hash.new   
  array.each do |item|
    if array_counter.has_key?(item)
      array_counter[item] += 1
    else
      array_counter[item] = 1
  	end
  end
  hey_i_like_that = []
    array_counter.each do |key,value|
      if value == array_counter.values.max
        hey_i_like_that << key
      end
  	end
  return hey_i_like_that
end
=end

# 3. Refactored Solution

def mode(array)
  array_counter = Hash.new   
  array.each do |item|
    if array_counter.has_key?(item)
      array_counter[item] += 1
    else
      array_counter[item] = 1
  	end
  end
  hey_i_like_that = []
    array_counter.each do |key,value|
      hey_i_like_that << key if value == array_counter.values.max
  	end
  return hey_i_like_that
end

# 4. Reflection

