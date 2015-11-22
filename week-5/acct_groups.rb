=begin	

directions

create method that creates accountability groups from a list of names
groups should have 4 or 5 members (no fewer than 3)
Decide what a minimum viable product will look like and what the output should be

pseudocode

MVP:
create list of names outside of method for initial testing
create a method that takes the list
IF list length is evenly divisible by five
	then break it up into groups of five
	IF NOT check if it's divisible by 5 with a remainder of 3 OR 4
		then break it up and make last group size of remainder
	If NOT check if evenly divisible by 4
		then break it up into groups of 4
		IF NOT check if it's divisible by 4 with a remainder of 3
			then break it up and make last group 3
		If NOT break off 5 and check 4 again
*Name "Accountability Group " with an increasing group number at the end
return groups as requested

Extra:
Randomize list name order
	Or randomize what group each name will be placed in
Determine how program will react to member desertion
	Determine what group person was in
	If group of 4 or 5 do nothing
	If group of three borrow from first group of 4 or five

Even more Extra (probably won't get this far):
Store past outputs
	Create "graduating classes" that store each time the program is run
Test using RSPEC

=end

# initial solution
=begin
numbers = *(1..200)

dance5 = 0
dance4 = 0
numbers.each do |x|
	if x%5 == 0 || x%5 == 4 || x%5 == 3
		dance5 += 1
	elsif x%4 == 0 || x%4 == 4 || x%4 == 3
		dance4 += 1
	else
		p x
	end
end
=end
list = [Jack Abernethy, Mohammad Amin, Zollie Barnes, Reuben Brandt, Dana Breen, Bret, Saundra Vanessa Castaneda, Luis De Castro, Nicolette Chambers, Kerry Choy, Nick Davies, KB DiAngelo, Adrian Diaz, David Diaz, Bob Dorff, Michael Du, Paul Dynowski, Jenna Espezua, Sean Fleming, Jennifer Gilbert, Marcel Haesok, Albert Hahn, Arthur Head, Jonathan Huang, Thomas Huang, Alex Jamar, Kevin Jones, Steven Jones, Cole Kent, Caroline, Calvin Lang, Yi Lu, David Ma, Charlotte Manetta, Charlotte Manetta, Sean Massih, Tom McHenry, Alex Mitzman, Lydia Nash, Brenda Nguyen, Matthew Oppenheimer, Mason Pierce, Joe Plonsker, Mira Scarvalone, Joseph Scott, Chris Shahin, Benjamin Shpringer, Lindsey Stevenson, Phil Thomas, Gary Tso, Ting Wang, Clinton Weber, Monique Williamson, Regina Wong, Hanah Yendler]

def acct_groups(input)
  list = input.dup
  list_length = list.length.to_i
  divisor = 0
  group = 0
  until divisor != 0
	  if list_length == 6
	  	divisor = 3
	  elsif list_length%5 == 0 || list_length%5 == 4 || list_length%5 == 3
	  	#break up into groups of five with potentially one group of 3 or 4
	  	divisor = 5
	  elsif list_length%4 == 0 || list_length%4 == 3 || list_length == 5
	  	# break up into groups of four
	  	divisor = 4
	  else
	  	# break off a group of five and start over
		group + 1
	  	Accountability_Group_"#{group}" = list(0..4)
	  	list.delete_at(0..4)
	  	list_length -= 5
	  	group + 1
	  end
  end
  list.each_slice(divisor).to_a
  list.each do |x|
    Accountability_Group_"#{group}" = list(x)
end

=begin
create a method that takes the list
IF list length is evenly divisible by five
	then break it up into groups of five
	IF NOT check if it's divisible by 5 with a remainder of 3 OR 4
		then break it up and make last group size of remainder
	If NOT check if evenly divisible by 4
		then break it up into groups of 4
		IF NOT check if it's divisible by 4 with a remainder of 3
			then break it up and make last group 3
		If NOT break off 5 and check 4 again
*Name "Accountability Group " with an increasing group number at the end
return groups as requested
=end
# refactored solution



# reflect
