=begin

instructions:

create an electronic grocery list
pass data between different methods without using a class structure

Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)

pseudocode:
=end

# define needed variables
response = 0
exit = 0
list = 0
# create an empty hash which will store the grocery list
$grocery_list = Hash.new

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into array (spaces become commas/new elements)
  # create new hash with a default quantity of 1
  # import the array as keys into the hash
  # add to the quantity if any duplicates are found
  # print the list to the console [can you use one of your other methods here?]
# output: no output, but the hash is saved and stored

def create_list(input)
  
  # put grocery list into an array
  array = input.split(" ")

  # place array into hash
  # if duplicates exist, add one to quantity
  array.each do |x|
  	if $grocery_list.has_key?(x)
      $grocery_list[x] += 1
    else
      $grocery_list[x] = 1
    end
  end
end

# Method to add an item to a list
# The above method should suffice

# Method to remove an item from the list
# input: list of items to remove (string)
# steps:
# => Convert string into array (commas replace spaces)
# => iterate through array and remove each from hash if it exists
# output: No output but grocery list is updated and stored

def remove_items(list)
  # convert list to an array
  array = list.split(" ")

  # iterate through array
  # if array item exists in hash, delete the corresponding key
  array.each do |x|
  	if $grocery_list.has_key?(x)
  		$grocery_list.delete(x)
  	end
  end
end


# Method to update the quantity of an item
# input: item that needs to be updated (string)
# steps:
# => look for item in existing hash
# => IF it exists, update value to user input
# => (optional) if it doesn't exist, prompt user
# output: No output but grocery list is updated and stored

def update(list, quantity)
	$grocery_list[list] = quantity if $grocery_list.has_key?(list)
end

# Method to print a list and make it look pretty
# input: 'print'
# steps: print hash
# output: the full hash

def print_list
	p "Here is your grocery list by item and quantity:"
	$grocery_list.each do |key, value|
	  p "  #{key} #{value}" 
	end
end

# prompt user for information
until exit == 1
  p "What would you like to do?"
  p "  Type 'create' to create a grocery list."
  p "  Type 'add' to add to the grocery list."
  p "  Type 'remove' to remove an item from the grocery list."
  p "  Type 'update' to update the quantity of an item."
  p "  Type 'print' to show your grocery list."
  p "  Type 'nothing' to exit."
  response = gets.chomp
  if response == "create"
  	p "What item(s) would you like to add to your grocery list? Please separate items with spaces."
  	list = gets.chomp.to_s
  	create_list(list)
  elsif response == "add"
  	p "What item(s) would you like to add to the existing list? Please separate items with spaces."
  	list = gets.chomp.to_s
  	create_list(list)
  elsif response == "remove"
  	p "What item would you like to remove from the list? Please separate items with spaces."
    list = gets.chomp.to_s
    remove_items(list)
  elsif response == "update"
  	p "What item would you like to update?"
  	list = gets.chomp.to_s
  	p "And how many of that item should there be?"
  	quantity = gets.chomp.to_s
  	update(list, quantity)
  elsif response == "print"
  	print_list
  elsif response == "nothing" || response == "exit"
  	exit = 1
  else
    p "Improper input." 
  end
end