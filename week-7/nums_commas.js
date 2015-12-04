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
  // create variables
  var array_element = -3;
  var output = number.toString().split(''); 
  var counter = output.length;
  // IF less than 4 digits, we're done
  if (number.length < 4) {
    return number;}
  // otherwise, iterate
  else {
    while (counter > 0) {
        output.splice(array_element,0,",")
        array_element -= 4;
        counter -= 4;
    }
      // convert array of strings back to number
      console.log(output.join(''));
  }
}

// Your Own Tests (OPTIONAL)

separateComma(1234777777);
separateComma(1234);
separateComma(20823509209);

// Reflection


