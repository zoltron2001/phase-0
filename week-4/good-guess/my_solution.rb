# Good Guess

# I worked on this challenge [by myself, with: ].


# Your Solution Below

=begin
Create method called get_grade
	Accepts average in a class and returns letter grade as string
	Return A,B,C etc (no +/-)
=end

def get_grade(grade)
	puts "What is the class average?"
	grade=gets.chomp
	if grade >= 90
		return "A"
	elsif grade >= 80
		return "B"
	elsif grade >= 70
		return "C"
	elsif grade >= 60
		return "D"
	else return "F"
	end