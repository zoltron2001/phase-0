# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

def longest_string(list_of_words)
  
	if list_of_words == []
		return nil
	else
		longest=list_of_words[0]
		list_of_words.each do |x|
			if x.length>longest.length
				longest = x
			end
		end
		return longest
	end
	
end