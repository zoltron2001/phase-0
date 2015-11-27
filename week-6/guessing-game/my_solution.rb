# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: guess (an integer)
# Output: return if guess is too high, too low, or correct
# Steps:
# => .initialize
# =>   initialize the answer (create a class variable with it)
# => .guess
# =>   tell user if guess is too high, too low, or correct (all are :symbols)
# => .solved
# =>   tell user if most recent answer is correct (true/false)

# Initial Solution

# class GuessingGame
  
#   def initialize(answer)
#     @answer = answer
#   end
  
#   def guess(guess)
#   	@guess = guess
#   	if @guess > @answer
#   		@guess = :high
#   	elsif @guess < @answer
#   		@guess = :low
#   	else
#   		@guess = :correct
#   	end
#   	return @guess
#   end
  
#   def solved?
#   	if @guess == :correct
#   		return true
#   	else
#   		return false
#   	end
#   end

# end

# Refactored Solution

class GuessingGame
  
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
  	# tell user if guess is too high, too low, or correct
  	@guess = guess
  	if @guess > @answer
  		@guess = :high
  	elsif @guess < @answer
  		@guess = :low
  	else
  		@guess = :correct
  	end
  end
  
  def solved?
  	# tell user if most recent answer is correct
  	@guess == :correct ? true : false
  end

end

# Reflection
=begin
	
How do instance variables and methods represent the characteristics and behaviors 
(actions) of a real-world object?

 Both instance variables and methods represent objects in ways that limit impact to 
 the class they are within. Is that what this question was asking?
 
When should you use instance variables? What do they do for you?

 Instance variables should be used when information needs to be passed between 
 methods living in the same class. If we had used a local variable, each of my 
 methods would have need an agrument that asks for the previous method's variable.

Explain how to use flow control. Did you have any trouble using it in this challenge? 
If so, what did you struggle with?

  Flow control is the selection of outcomes depening on given circumstances. Often 
  it involves a series of conditionals (if this then that) resulting in various 
  outcomes. I'm becoming well aquainted with flow control, but I still found myself 
  writing '=' where I needed to be writing '=='.

Why do you think this code requires you to return symbols? What are the benefits of 
using symbols?
	
  Well for one, it's one fewer character to write. But I think it also has to do 
  with mutability as that seems to be the only difference between symbols and 
  strings. Strings can be changed where as symbols cannot. I think things can 
  go wonky when strings are combined with true/false values since strings can 
  hold data... Please comment if you know better.

=end