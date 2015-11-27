# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: one of those strings, chosen randomly
# Steps:
# => .initialize
# =>  IF array is not empty set class variable to array
# =>  ELSE raise an argument error
# => .sides
# =>  RETURN the length of the array
# => .roll
# =>  RANDOMIZE which array element is returned


# Initial Solution

# class Die
#   def initialize(labels)
#   	# create a die as long as the number of sides is over 1
#   	# if there is an improper number of sides, raise an argument error
#     if labels != []
#     	@die = labels
#     else
#       raise ArgumentError.new("An empty array was passed.")
#     end
#   end

#   def sides
#   	# tell the people how many sides there are
#     return @die.length
#   end

#   def roll
#   	# randomize which letter is called
# 		# add one to the length to adjust for array
#     random_number = rand(@die.length) + 1
#     return @die[random_number]
#   end
# end

# Refactored Solution

class Die
  def initialize(labels)
  	# create a die with array labels, unless array is empty
    if labels != []
    	@die = labels
    else
      raise ArgumentError.new("An empty array was passed.")
    end
  end

  def sides
  	# tell the people how many sides there are
    @die.length
  end

  def roll
  	# randomize which letter is called
    @die.sample
  end
end

# Reflection
=begin

What were the main differences between this die class and the last one you 
created in terms of implementation? Did you need to change much logic to get 
this to work?

  The primary difference was that we were dealing with an array rather than a 
  single integer. All three methods needed to be changed. .initialize needed to 
  look for an empty array rather than a number less than 1. .sides needed to 
  determine the length of the array rather than return the original number. And 
  .roll's randomizing was not as simple as applying "rand" to the number. It 
  either needed to first determine the number of sides, randomize that number, 
  and then call the array element with that number (initial solution). Or a 
  new method had to be called to grab a "sample" from the array (refactored).


What does this exercise teach you about making code that is easily changeable 
or modifiable? 

 Splitting work into small steps as this class does, organizes the work such 
 that modification is simpler.

What new methods did you learn when working on this challenge, if any?

  .sample, which identifies a random array element.

What concepts about classes were you able to solidify in this challenge?

  It was nice to revisit the instance variable. When I first looked at the code, 
  I had to remind myself what @variable stood for and why it was preferable.

=end