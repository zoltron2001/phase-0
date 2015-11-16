=begin
	Reflection
		How do you define a local variable?
			Variables are named in lower case with _ or - between words if necessary.
			You simply write a name and set it '=' to an object. All of this occurs on
			its own line. It looks like this:
			variable = object
		How do you define a method?
			A method is defined, named, given arguments, given an action, and ended. 
			It looks like this:
				def name(argument,argument)
					#do something
				end
		What is the difference between a local variable and a method?
			A local variables hold objects, whereas a methods have more to do with 
			actions. While it is true that a method can hold objects (or local variables 
			of its own) the ultimate idea is for that method to accomplish something.
		How do you run a ruby program from the command line?
			Well I've got to do a ton of vagrant stuff first #windowsproblems.
				vagrant up
				vagrant ssh
				cd ../../vagrant
				ruby name.rb
		How do you run an RSpec file from the command line?
			vagrant up
			vagrant ssh
			cd ../../vagrant
			rspec name.rb

			If one .rb file will be evaulating another, you use rspec to call the
			file doing the evaluation.
		What was confusing about this material? What made sense?
			A lot of the actual work made sense. The vagrant stuff was the most difficult. 
			Since this is the first week we're required to use ruby locally, it might be 
			a good idea to revisit computer set-up and vagrant usage.

end


=begin
Full name greeting
	Write a "program"
	Ask for first, middle, and last name
	Greet the person using their full name
=end

puts "Input first name: "
first = gets.chomp
puts "Input middle name: "
middle = gets.chomp
puts "Input last name: "
last = gets.chomp

puts first + " " + middle + " " + last

=begin
Bigger, better favorite number
	Write a "program"
	Ask for favorite number
	Add 1 to number
	Suggest the result as a bigger and better number
=end

puts "Input favorite number: "
fnumber = gets.chomp
fnumber = fnumber.to_i + 1
puts "Here's a bigger and better number: #{fnumber}"