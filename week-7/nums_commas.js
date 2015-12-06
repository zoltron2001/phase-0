// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

// take number (as argument)
// IF number is less than 4 digits, spit number out
//    each digit becomes it's own element in an array
//    reverse number
//    iterate through to determine where commas go
//       every so many numbers (3 or 4) gets a comma
// spitting out a number with commas

// Initial Solution
// number = 1234
//   -3 -2 -1 0 1 2 3
//    2  3  4 1 2 3 4

// function separateComma(number) {
//   // create variables
//   var comma = -3;
//   var output = number.toString().split('');
//   var counter = output.length;
//   // IF less than 4 digits, we're done
//   if (number.length < 4) {
//     return number;}
//   // otherwise, iterate
//   else {
//     while (counter > 0) {
//         output.splice(comma,0,",")
//         comma -= 4;
//         counter -= 4;
//     }
//       // convert array of strings back to number
//       console.log(output.join(''));
//   }
// }

// // Driver Code

// separateComma(1234777777);
// separateComma(1234);
// separateComma(20823509253053209);

// Refactored Solution

function separateComma(number) {
  array_element = -3;
  // convert to string so we can split
  output = number.toString().split('');
  counter = output.length;
  // IF less than 4 digits, no commas necessary, and we're done
  if (output.length < 4) {console.log(number);}
  // otherwise, iterate
  else {
    while (counter > 0) {
        // put in a comma
        output.splice(array_element,0,",")
        // move to the next comma location
        array_element -= 4, counter -= 4;
    }
      // convert array of strings back to number
      console.log(output.join(''));
  }
}

// Your Own Tests (OPTIONAL)
separateComma(123);
separateComma(1234777777);
separateComma(1234);
separateComma(20823509209);

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did
// you approach the problem differently?

  // My approach was really similar, but the process was a lot less painful. I
  // struggled with this exercise a lot the first time around, so I had a pretty good
  // memory of its solution. Notable changes had more to do with orienting myself
  // with the new syntax.

// What did you learn about iterating over arrays in JavaScript?

  // Conditions need to go in parentheses.

// What was different about solving this problem in JavaScript?

  // Methods required a bit more specific information. For example, splice required
  // three arguments, whereas Ruby's insert only required two. Likewise, join doesn't
  // require any arguments in ruby, but it requires one in JavaScript.

// What built-in methods did you find to incorporate in your refactored solution?

  // toString, split, splice, join, length
  // Splice was the only unfamiliar concept.
