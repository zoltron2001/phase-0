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