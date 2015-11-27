# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: object (die) with n number of sides
# Output:
# => the number of sides the die has
# => what is rolled (a random number within range)
# Steps:
# => initalize: create new die as long as the input isn't negative
# => sides: return the number of sides
# => return a random number using sides as a maximum

# 1. Initial Solution

=begin
class Die
  def initialize(sides)
    if sides >= 1
    	@die = sides
    else
      raise ArgumentError.new ("No numbers less than 1 are allowed.")
    end
  end
  def sides
    return @die
  end
  def roll
    return rand(@die) + 1
  end
end
=end

# 3. Refactored Solution

class Die
  def initialize(sides)
  	# create a die as long as the number of sides is over 1
  	# if there is an improper number of sides, raise an argument error
    if sides >= 1
    	@die = sides
    else
      raise ArgumentError.new ("No numbers less than 1 are allowed.")
    end
  end

  def sides
  	# tell the people how many sides there are!
    return @die
  end

  def roll
  	# randomize the roll
  	# we add one to randomize from 1 to n rather than 0 to n as is default
    return rand(@die) + 1
  end
end

# 4. Reflection
=begin
	
What is an ArgumentError and why would you use one?
  An argument error is an error that shows up when an argument was wrong. Here 
  we needed positive numbers 1 or greater. So any negative numbers would have 
  been wrong and yeiled an error. You use argument errors to alert users or 
  developers that an argument was imporperly used. That way that can hopefully 
  determine what sort of argument they should be passing.

What new Ruby methods did you implement? What challenges and successes did you have 
in implementing them?
  We used the .new method on the ArgumentError. It wasn't terribly difficult, but 
  it was interesting to see that we can create argument errors of our own.

What is a Ruby class?
  A class is the "blueprint from which...objects are created."

Why would you use a Ruby class?
  It allows us to partion off a slew of rules for specific uses. Classes also 
  allow us to pass information between objects within the class (more on that 
  below).

What is the difference between a local variable and an instance variable?
  A local variable only exists within the method it is placed. It cannot 
  be accesses elsewhere. Instance variables can be used anywhere in a class 
  and are denoted via the @ symbol followed by the name.

Where can an instance variable be used?
  Across methods in the same class.

=end