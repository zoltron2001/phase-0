// Grocery List

// Pseudocode

// Create a new list
  // This should be an OBJECT (KEY is item, VALUE is quantity)
// Add an item with a quantity to the list
  // IF item is not on the list, add it to the list with the given value
  // ELSE item is on list, and one is added to its value (quantity)
  // RETURN list
// Remove an item from the list
  // IF item is on list, delete item key
  // RETURN list
// Update quantities for items in your list
  // IF item is on list, adjust quantity to given number
  // RETURN list
// Print the list (Consider how to make it look nice!)
  // Print results to console for MVP
  // Add HTML if there's time

// Initial Solution

// Add an item with a quantity to the list

// function add_item(grocery_list,item,quantity) {
//   if (grocery_list.hasOwnProperty(item)) {
//     grocery_list[item] += quantity;
//   }
//   else
//     {grocery_list[item] = quantity;}
//   return grocery_list;
// }

// // Remove an item from the list

// function remove_item(grocery_list, item) {
//   if (grocery_list.hasOwnProperty(item)) {
//     delete grocery_list[item];
//   }
//   return grocery_list;
// }

// // Update quantities for items in your list

// function update_item(grocery_list,item,quantity) {
//   if (grocery_list.hasOwnProperty(item)) {
//     {grocery_list[item] = quantity;}
//     return grocery_list;
//   };
// }

// // Print the list (Consider how to make it look nice!)

// function print_list(grocery_list) {
//   console.log(grocery_list);
// }

// // Driver Code

// var grocery_list = {};
// add_item(grocery_list, "apple", 2);
// add_item(grocery_list, "pear", 3);
// add_item(grocery_list, "apple", 2);
// print_list(grocery_list);
// remove_item(grocery_list,"pear");
// update_item(grocery_list, "apple", 10);
// print_list(grocery_list);


// Refactored Code

function add_item(grocery_list,item,quantity) {
  if (grocery_list.hasOwnProperty(item)) {
    grocery_list[item] += quantity;
  }
  else
    {grocery_list[item] = quantity;}
  return grocery_list;
}

// Remove an item from the list

function remove_item(grocery_list, item) {
  if (grocery_list.hasOwnProperty(item)) {
    delete grocery_list[item];
  }
  return grocery_list;
}

// Update quantities for items in your list

function update_item(grocery_list,item,quantity) {
  remove_item(grocery_list, item);
  add_item(grocery_list,item,quantity);
}

// Print the list (Consider how to make it look nice!)

function print_list(grocery_list) {
  console.log(grocery_list);
}

// Driver Code

var grocery_list = {};
add_item(grocery_list, "apple", 2);
add_item(grocery_list, "pear", 3);
add_item(grocery_list, "apple", 2);
print_list(grocery_list);
remove_item(grocery_list,"pear");
update_item(grocery_list, "apple", 10);
print_list(grocery_list);

// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing // of information, objects, constructors, etc.)

// I forgot the differences in functionality between dot notation and bracket for objects. Since I was passing strings through as arguments, bracket notation was preferable.

// What was the most difficult part of this challenge?

// Nothing too tricky here other than figuring out the bracket notation bit.

// Did an array or object make more sense to use and why?

// An object made more sense since quantities were being tracked. Had I used arrays, I would have had to have two separate data structures (one listing item, the other quanitity) that would have had to be re-matched up during printing.