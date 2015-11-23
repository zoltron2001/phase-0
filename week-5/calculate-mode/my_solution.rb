# Calculate the mode Pairing Challenge

# I worked on this challenge [Bob Dorff]

# I spent [2] hours on this challenge.

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
=begin
Which data structure did you and your pair decide to implement and why?
  We used a hash. The hash value allowed us to keep track of duplicate keys (we 
  simply added one to the value). That way, when it came time to assess the most 
  frequently used key, we could grab the key with the biggest value.

Were you more successful breaking this problem down into implementable pseudocode 
than the last with a pair? 
  No. Because this was really only a two step problem, we didn't really rely on 
  our pseudocode. That wasn't a spoken agreement, it just kind of worked out that 
  way. We both understood what we had to figured out, and we just researched the 
  heck out of that.

What issues/successes did you run into when translating your pseudocode to code?
  We had a lot of trouble accessing and manipulating hash values. A lot of the 
  confusion had to do with syntax - whether the hash should be called with []'s, 
  ()'s, "#{}"'s etc. It also took us a while to find the .has_key? method.

What methods did you use to iterate through the content? Did you find any good ones 
when you were refactoring? Were they difficult to implement?
  We didn't find any new iterators. And we didn't find anything while refactoring. 
  However, .has_key? and .values.max were new to us. They weren't difficult to 
  implement so much as the hash syntax was.

=end 