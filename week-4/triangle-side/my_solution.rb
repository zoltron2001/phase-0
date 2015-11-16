# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)

# to ensure the triangle sides are not 0 or negative

  	if (a <= 0) || (b <= 0) || (c <= 0)
  		return false

#to get rid of all impossible triangles
	elsif a + b < c
		return false
	elsif a + c < b
		return false
	elsif b + c < a
		return false
=begin
#is it a triangle?
#this section has been refractored out

	elsif a + b > c
		return true
	elsif a + c > b
		return true
	elsif b + c > a
		return trues
=end

#if all the not possible situations are false, then it must be a triangle
	else
		return true
	end
end