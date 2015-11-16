# Leap Years

# I worked on this challenge [by myself].


# Your Solution Below

def leap_year?(integer)

# if it's 400 divisible, it's golden

	if integer%400 == 0
		return true

# if it's 4 divisible and not 100 divisible, it's good too

	elsif (integer%4 == 0) && (integer%100 != 0)
		return true

# otherwise to hell with it
	else
		return false
	end
end

=begin
	NOTES 

	Create a method leap_year?
	accepts an integer representing a year as input

	return true if year is a leap year and false otherwise

	For example

	leap_year?(2000) # => true
	leap_year?(2001) # => false

	leap year occurs every 4 years, and adds an extra day to that year
	but every 100 years we don't have a leap year
	and every 400 years we have another leap year
=end

=begin

OLD UNREFRACTORED CODE	

def leap_year?(integer)

#is it 400 years divisible? then it's a leap year
	years_400 = false
	if integer % 400 == 0
		years_400 = true
	end
#is it 100 divisible? then it's a common year (unless 400 year thing)
	years_100 = false
	if integer % 100 == 0
		years_100 = true
	end
#is it 4 years divisible? then it's a leap year (unless 100 year thing)
	years_4 = false
	if integer % 4 == 0
		years_4 = true
	end
# check that everything is as it should be
# if it's 400 divisible it's golden
	if (years_400 == true)
		return true
#if it's 4 divisible and not 100 divisible it's good too
	elsif (years_4 == true) && (years_100 == false)
		return true
#otherwise to hell with it
	else
		return false
	end
end
=end