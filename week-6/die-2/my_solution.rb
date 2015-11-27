# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: 
# Output: 
# Steps: 


# Initial Solution

class Die
  def initialize(labels)
  	# create a die as long as the number of sides is over 1
  	# if there is an improper number of sides, raise an argument error
    if labels != []
    	@die = labels
    else
      raise ArgumentError.new("An empty array was passed.")
    end
  end

  def sides
  	# tell the people how many sides there are!
    return @die.length
  end

  def roll
  	# randomize the roll
    return rand(@die)
  end
end

# Refactored Solution








# Reflection