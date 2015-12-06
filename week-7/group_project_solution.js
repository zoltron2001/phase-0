// User1

// Initial Solution
// calculate summation

function sum(numbers){
  total=0;
  numbers.forEach(function (element){
    total+=element;
  })
  return total;
}
// calculate median
function median(numbers){
  numbers_array = []
  previous_element = numbers[0];
  numbers.forEach(function (value){
    if (value>previous_element)
      numbers_array.push(value);
    else
      numbers_array.unshift(value);
      previous_element=value;
  });
  while (numbers_array.length > 1) {
    size = numbers_array.length - 1;
    numbers_array.splice(0,1);
    numbers_array.splice(size,1);
  }
  return numbers_array;
}

// calculate mode

function mode(numbers){
  var track_numbers = {};
  var number_repetition = 0;
  var largest_number = 0
// creates an object with #'s as keys and how many times the # is listed as a value
  numbers.forEach(function (value){
    if(track_numbers.hasOwnProperty(value))
      track_numbers[value] += 1;
    else
      track_numbers[value] = 1;
  })
// go through the object and return the number listed most frequently
  for(var index in track_numbers) {
    if (track_numbers[index] > largest_number)
      largest_number = index;
  }
  return largest_number
}


// Pseudocode User2
// ugh i don't know if this will work
function throw_error(test) {
  var error_message = "";
  if (test === false)
    error_message = test;
  return error_message
}

// Pseudocode User3
function print_sum(numbers) {
  console.log(sum(numbers))
}

// Pseudocode User4

function print_mean(numbers) {
  console.log(mean(numbers))
}

// Pseudocode User5

function print_median(numbers) {
  console.log(median(numbers))
}
// driver code
list = [9,1,4,10,1,27,27,27]
print_median(list)