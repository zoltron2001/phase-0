# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => Line 8
# 3. What is the type of error message?
# => Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected '=', expecting $end
# 5. Where is the error in the code?
# => Where the equals sign is in line eight. There's a ^ indicating where (incase there were multiple '=' signs).
# 6. Why did the interpreter give you this error?
# => It seems that "cartmans_phrase" was meant to have two combined strings assigned to it. If that was the case, then cartmans_phrase should have been written first. In the current order, we are attempting to assign a variable to strings. But strings aren't meant to hold or store information like that.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => NameError
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method main:Object 
# 4. Where is the error in the code?
# => 'south_park'
# 5. Why did the interpreter give you this error?
# => The variable or method 'south_park' needs to be defined. It can be set to something empty if necessary such as 0 or '' if it's a variable, but it needs to be defined.  Ruby is uncertain if it is a variable or method since they can be named in the same way.

# --- error -------------------------------------------------------

#def cartman()

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method main:Object
# 4. Where is the error in the code?
# => 'cartman'
# 5. Why did the interpreter give you this error?
# => The method needs to be defined. This can be accomplished by adding 'def ' before 'cartman()'. An 'end' is also necessary after it has been defined.

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
# => 65 and/or 69
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => in 'cartmans_phrase' or something is missing from 69
# 5. Why did the interpreter give you this error?
# => The method does not list and arguments, but when it is called it is called with an argument. The method either needs to be granted an argument or the call needs to have its argument removed.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# => 84 and/or 88
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => 'cartman_says' or something is missing from line 88
# 5. Why did the interpreter give you this error?
# => Here we have the reverse problem. Our method lists an argument, but when we call the method, we fail to provide it with one. The argument either needs to be removed from the method, or an argument needs to be granted when calling it.



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# => 105 and/or 109
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => cartmans_lie or something is missing from 109
# 5. Why did the interpreter give you this error?
# => The method requires 2 arguments, but when it's called only 1 argument is provided. Again, either give another argument or get rid of one in the method.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum
# 4. The '*' sign
# => The whole line seems to be a problem.
# 5. Why did the interpreter give you this error?
# => We're attempting to multiply a number by a string. The 'string' type and 'number' are refusing to interact given racial tension (numbers are bigots). A string can't do much for a number, but a number can help a string. The reverse order would do something - add a 'print' and it would print the string 5 times.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => The '/' sign
# 5. Why did the interpreter give you this error?
# => We're attempting to divide 20 by 0. Basic math principles say you can't divide by zero. It's an undefined circumstance.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => 'require_relative': cannot load such file -- /vagrant/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# => The whole line
# 5. Why did the interpreter give you this error?
# => Cartman never wrote his essay. And if he did, then it's not on my computer. We're trying to load something that doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

=end