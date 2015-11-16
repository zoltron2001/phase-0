# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below

=begin

NOTES 

Create method called welcome
accepts an address as a single string

returns "Welcome to California" if the address includes "CA"
and "You should move to California" otherwise.
	
=end

def welcome(address)
	if address.include? "CA"
		return "Welcome to California"
	else
		return "You should move to California"
	end
end