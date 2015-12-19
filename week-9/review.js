// Grocery List

// Pseudocode

// Create a new list
  // This should be an object (key is item, value is quantity)
// Add an item with a quantity to the list
  // IF item is not on the list, add it to the list with the given value
  // ELSE item is on list, and one is added to its value (quantity)

// Remove an item from the list
  //

// Update quantities for items in your list
  //
  //

// Print the list (Consider how to make it look nice!)
  // Print results to console for MVP
  // Add HTML if there's time

// Initial Solution (MVP)

var grocery_list = {};

// Refactored Code



// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing // of information, objects, constructors, etc.)


// What was the most difficult part of this challenge?


// Did an array or object make more sense to use and why?



//---Ruby---
def add_item(grocery_list, item, quantity)
  if grocery_list.has_key?(item)
    grocery_list[item] += quantity
  else
    grocery_list[item] = quantity
  end
  grocery_list
end

// Method to remove an item from the list
// input: list of items to remove (string)
// steps:
// => Convert string into array (commas replace spaces)
// => iterate through array and remove each from hash if it exists
// output: No output but grocery list is updated and stored

def remove_item(grocery_list, item)
  // convert list to an array
  array = item.split(" ")

  // iterate through array
  // if array item exists in hash, delete the corresponding key
  array.each do |food|
    if grocery_list.has_key?(food)
      grocery_list.delete(food)
    end
  end
  grocery_list
end


// Method to update the quantity of an item
// input: item that needs to be updated (string)
// steps:
// => look for item in existing hash
// => IF it exists, update value to user input
// => (optional) if it doesn't exist, prompt user
// output: No output but grocery list is updated and stored

def update(grocery_list, list, quantity)
  if grocery_list.has_key?(list)
    grocery_list[list] = quantity
  end
  grocery_list
end

// Method to print a list and make it look pretty
// input: 'print'
// steps: print hash
// output: the full hash

def print_list(grocery_list)
  output_string1 = "Here is your grocery list:"
  output_string2 = 0
  grocery_list.each do |key, value|
    output_string2 = "  //{key} //{value}"
  end
  output_string1
  output_string2
end

// DRIVER CODE
grocery_list = create_list("Apple Banana")
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
remove_item(grocery_list, "Lemonade")
update(grocery_list, "Ice Cream", 1)
print_list(grocery_list)