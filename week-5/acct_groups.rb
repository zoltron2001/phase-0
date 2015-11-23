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

Even more Extra (probably won't get this far):
Determine how program will react to member desertion
	Determine what group person was in
	If group of 4 or 5 do nothing
	If group of three borrow from first group of 4 or five
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
=begin

names = ["Jack Abernethy", "Mohammad Amin", "Zollie Barnes", "Reuben Brandt", "Dana Breen", "Breton Burnett", "Saundra Vanessa Castaneda", "Luis De Castro", "Nicolette Chambers", "Kerry Choy", "Nick Davies", "Katherine DiAngelo", "Adrian Diaz", "David Diaz", "Bob Dorff", "Michael Du", "Paul Dynowski", "Jenna Espezua", "Sean Fleming", "Marcel Haesok", "Albert Hahn", "Arthur Head", "Jonathan Huang", "Thomas Huang", "Alex Jamar", "Kevin Jones", "Steven Jones", "Coleby Kent", "Caroline Kenworthy", "Calvin Lang", "Yi Lu", "David Ma", "Sean Massih", "Tom McHenry", "Alex Mitzman", "Lydia Nash", "Brenda Nguyen", "Matthew Oppenheimer", "Mason Pierce", "Joe Plonsker", "Mira Scarvalone", "Joseph Scott", "Chris Shahin", "Benjamin Shpringer", "Lindsey Stevenson", "Philip Thomas", "Gary Tso", "Ting Wang", "Clinton Weber", "Monique Williamson", "Regina Wong", "Hanah Yendler"]

def acct_groups(input)

  list = input.dup
  list_length = list.length.to_i
  divisor = 0
  holding_bay = []


# Determine how groups can be split up
  until divisor != 0
	  if list_length == 6
	  	divisor = 3
	  elsif list_length%5 == 0 || list_length%5 == 4 || list_length%5 == 3
	  	divisor = 5
	  elsif list_length%4 == 0 || list_length%4 == 3 || list_length == 5
	  	divisor = 4
	  else
	  	# put 5 names to the side and try again
	  	holding_bay << list(0..4)
	  	list.delete_at(0..4)
	  	list_length -= 5
	  end
  end

  # split up the names that were put off to the side into groups of 5
  eholding_bay = holding_bay.each_slice(5).to_a
  # split up the remaining names according to the assigned divisor
  list = list.each_slice(divisor).to_a
  # if we pulled groups out, add them back in
  if holding_bay != []
    holding_bay.each do |x|
      list << x
    end
  end

  # store results

  #stored_results << list.dup

  # print all groups
  #def print_all_groups
    group = 1
    list.each do |x|
      p "Accountability Group #{group} includes the following members:"
      p x
      group += 1
  end
  #end

  # pint specific group
  #def print_specific_group(group)

end

acct_groups(names)
=end

# refactored solution


names = ["Jack Abernethy", "Mohammad Amin", "Zollie Barnes", "Reuben Brandt", "Dana Breen", "Breton Burnett", "Saundra Vanessa Castaneda", "Luis De Castro", "Nicolette Chambers", "Kerry Choy", "Nick Davies", "Katherine DiAngelo", "Adrian Diaz", "David Diaz", "Bob Dorff", "Michael Du", "Paul Dynowski", "Jenna Espezua", "Sean Fleming", "Marcel Haesok", "Albert Hahn", "Arthur Head", "Jonathan Huang", "Thomas Huang", "Alex Jamar", "Kevin Jones", "Steven Jones", "Coleby Kent", "Caroline Kenworthy", "Calvin Lang", "Yi Lu", "David Ma", "Sean Massih", "Tom McHenry", "Alex Mitzman", "Lydia Nash", "Brenda Nguyen", "Matthew Oppenheimer", "Mason Pierce", "Joe Plonsker", "Mira Scarvalone", "Joseph Scott", "Chris Shahin", "Benjamin Shpringer", "Lindsey Stevenson", "Philip Thomas", "Gary Tso", "Ting Wang", "Clinton Weber", "Monique Williamson", "Regina Wong", "Hanah Yendler"]

def acct_groups(input)
  # randomize list order
  list = input.dup.shuffle
  list_length = list.length
  divisor = 0
  holding_bay = []

  # Determine how groups can be split up
  until divisor != 0
	  if list_length%5 == 0 || list_length%5 == 4 || list_length%5 == 3
	  	divisor = 5
	  elsif list_length%4 == 0 || list_length%4 == 3 || list_length == 5
	  	divisor = 4
	  else
	  	# put 5 names to the side and try again
	  	holding_bay << list(0..4)
	  	list.delete_at(0..4)
	  	list_length -= 5
	  end
  end

  # split up the names that were put off to the side into groups of 5
  holding_bay = holding_bay.each_slice(5).to_a
  # split up the remaining names according to the assigned divisor
  list = list.each_slice(divisor).to_a
  # if we pulled groups out, add them back in
  if holding_bay != []
    holding_bay.each do |x|
      list << x
    end
  end

  # print all groups
    group = 1
    list.each do |x|
      p "Accountability Group #{group} includes the following members:"
      p x.join(", ")
      group += 1
  end

end

acct_groups(names)

# reflect

=begin
	
What was the most interesting and most difficult part of this challenge?
  Manipulating the array was the most frightening business. Even though we 
  dealt with multidimensional arrays in codecademy, I was a little shaky on 
  deleting items, accessing specific ranges, and splitting it up into sections.

Do you feel you are improving in your ability to write pseudocode and break 
the problem down?
  Yeah I do. And in this case, the pseudocode was totally necessary. I only ended 
  up achieving the MVP with one optional accomplishment, but even with that, my 
  code had to be split up into four sections.

Was your approach for automating this task a good solution? What could have 
made it even better?
  It was fine for a MVP. I would have prefered a user input driven experience 
  where the user commicates with the program to indicate he or she wanted done. 
  That way, particular group information and historical data could have been 
  accessed, and entries could have been updated.

What data structure did you decide to store the accountability groups in and 
why?
  I decided on arrays 

What did you learn in the process of refactoring your initial solution? Did you 
learn any new Ruby methods?
  I learned how to shuffle the items in an array (I suppose that's creating not 
  refactoring, but whatever). I figured out how to get rid of the brackets when 
  printing an array (.join(" ")). Other than that, I just cleaned up a bit.
  
=end