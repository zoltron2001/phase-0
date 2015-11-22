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

list = [Jack Abernethy, Mohammad Amin, Zollie Barnes, Reuben Brandt, Dana Breen, Bret, Saundra Vanessa Castaneda, Luis De Castro, Nicolette Chambers, Kerry Choy, Nick Davies, KB DiAngelo, Adrian Diaz, David Diaz, Bob Dorff, Michael Du, Paul Dynowski, Jenna Espezua, Sean Fleming, Jennifer Gilbert, Marcel Haesok, Albert Hahn, Arthur Head, Jonathan Huang, Thomas Huang, Alex Jamar, Kevin Jones, Steven Jones, Cole Kent, Caroline, Calvin Lang, Yi Lu, David Ma, Charlotte Manetta, Charlotte Manetta, Sean Massih, Tom McHenry, Alex Mitzman, Lydia Nash, Brenda Nguyen, Matthew Oppenheimer, Mason Pierce, Joe Plonsker, Mira Scarvalone, Joseph Scott, Chris Shahin, Benjamin Shpringer, Lindsey Stevenson, Phil Thomas, Gary Tso, Ting Wang, Clinton Weber, Monique Williamson, Regina Wong, Hanah Yendler]



# refactored solution



# reflect