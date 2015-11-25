=begin

instructions:

create an electronic grocery list
pass data between different methods without using a class structure

Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)

PSEUDOCODE:
=end
# REFACTORED CODE

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into array (spaces become commas/new elements)
  # create new hash with a default quantity of 1
  # import the array as keys into the hash
  # print the list to the console [use print method]
# output: no output, but the hash is saved and stored

def create_list(list)
  
  grocery_list = Hash.new
  array = list.split(" ")
  array.each do |item|
    add_item(grocery_list, item, 1)
  end
  print_list(grocery_list)
  grocery_list

end

# Method to add an item to a list
# input: hash from create list as well as user inputted item
# steps: 
  # Add one to item if it is already on the list
  # Otherwise create the item and assign it to a value of one
# output: the list of grocery items with the added item(s)

def add_item(grocery_list, item, quantity)
  if grocery_list.has_key?(item)
    grocery_list[item] += quantity
  else
    grocery_list[item] = quantity
  end
  grocery_list
end

# Method to remove an item from the list
# input: list of items to remove (string)
# steps:
# => Convert string into array (commas replace spaces)
# => iterate through array and remove each from hash if it exists
# output: No output but grocery list is updated and stored

def remove_item(grocery_list, item)
  # convert list to an array
  array = item.split(" ")

  # iterate through array
  # if array item exists in hash, delete the corresponding key
  array.each do |food|
    if grocery_list.has_key?(food)
      grocery_list.delete(food)
    end
  end
  grocery_list
end


# Method to update the quantity of an item
# input: item that needs to be updated (string)
# steps:
# => look for item in existing hash
# => IF it exists, update value to user input
# => (optional) if it doesn't exist, prompt user
# output: No output but grocery list is updated and stored

def update(grocery_list, list, quantity)
  if grocery_list.has_key?(list)
    grocery_list[list] = quantity 
  end
  grocery_list
end

# Method to print a list and make it look pretty
# input: 'print'
# steps: print hash
# output: the full hash

def print_list(grocery_list)
  output_string1 = "Here is your grocery list:"
  output_string2 = 0
  grocery_list.each do |key, value|
    output_string2 = "  #{key} #{value}" 
  end
  output_string1
  output_string2
end

# DRIVER CODE
grocery_list = create_list("Apple Banana")
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
remove_item(grocery_list, "Lemonade")
update(grocery_list, "Ice Cream", 1)
print_list(grocery_list)

# REFLECTION
=begin
  
What did you learn about pseudocode from working on this challenge?
  It helped to divide the code into chunks to tackle.
What are the tradeoffs of using Arrays and Hashes for this challenge?
  Arrays were simpler for me to manipulate but they were limited in scope.
  I ended up using both. Arrays to get the data right, and hashes to add 
  values to.
What does a method return?
  A method returns whatever it's asked to return. In some of these cases 
  I didn't have the method return anything. Instead, it updated a global 
  variable. In other cases, I had it print information.
What kind of things can you pass into methods as arguments?
  I think it's anything that can be stored as a variable. So strings, numbers, 
  arrays and hashes. 
How can you pass information between methods?
  I used global variables that were created outside of the method like this:
  $variable
  However, I probably could have created a class as well.
What concepts were solidified in this challenge, and what concepts are still confusing?
  I'm not sure what the purpose of the "add" method would be, unless my "create" 
  method was supposed to create a new hash.  
=end


# INITIAL RESPONSE
=begin
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

=end