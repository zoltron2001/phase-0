// Eloquent JavaScript
//
// release 1
//
// Did you learn anything new about JavaScript or programming in general?
//
//   Near the beginning of the chapter he describes point-and-click limitations
//   while highlighting the need for programming languages. It was a nice bit of
//   perspective to think of language as a tool. Also while I knew Java and JS are
//   wildly different, I didn't realize the naming had to do with marketing.
//
// Are there any concepts you feel uncomfortable with?
//
//   Yeah, nothing too wild here. I would like to find some sort of application or
//   plugin that will be a bit more responsive to my JS errors, however.
//
// chapter 1 Values Types and Operators
//
// Identify two similarities and two differences between JavaScript and Ruby
// syntax with regard to numbers, arithmetic, strings, booleans, and various
// operators.
//
// Symbols for operators are mostly the same in both languages. ||, &&, and !
// are used in both. Both languages use the == operator to check equality.
// Ruby conditionals behave pretty logically but JS can be used to "short
// circuit." JS has an additional === operator designed to compare "precise
// value."
//
// chapter 2 Program Structure
//
// What is an expression?
//
// A fragrment of code that produces a value. Objects that are written literally,
// for example 4, is also an expression.
//
// What is the purpose of semicolons in JavaScript? Are they always required?
//
// Semicolons tell JS where statements begin and end. They are not always
// required, but the determining when is "complicated" according to the book.
//
// What causes a variable to return undefined?
//
// Requesting a value from an empty variables.
//
// Write your own variable and do something to it.
//
var garbage = "1 bag of garbage";
console.log(garbage);
garbage = "2 bags of garbage";
console.log(garbage);
//
// What does console.log do and when would you use it? What Ruby method(s) is
// this similar to?
//
// console.log() is an expression that retrieves the log property held by the
// console variable. It's simililar to print/p/return/puts in ruby.
//
// Write a short program that asks for a user to input their favorite food. After
// they hit return, have the program respond with "Hey! That's my favorite too!"
// (You will probably need to run this in the Chrome console rather than node
// since node does not support prompt or alert). Paste your program into the
// eloquent.js file.
//
// prompt("What is your favorite food?");
// console.log("Hey! That's my favorite too! Twinsies.");
//
// Describe while and for loops
//
// Both are looping control flow. Their syntax is as follows:
//    while (condition is true) {do something;}
//    for (define counter variable; when will it stop; how will it count)
//      do something;
// We loop in order to repeat processes rather than typing the same thing
// over and over. What occurs in a For Loop could be accomplished in a While
// Loop as well. But For Loops expediate the well trodden process of using a
// counter variable.
//
// What other similarities or differences between Ruby and JavaScript did you
// notice in this section?
//
// Both make use of the break function. Their iterative functions behave in
// much the same way. JS, however, uses all those semicolons.
//
// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess
// Board) in the eloquent.js file.
//
// Looping Triangle
lines=0;
var line = "#";
while(lines <= 7) {
  console.log(line);
  line += "#";
  lines++;
}
// fizzbuzz
number = 1
while(number<=100) {
  if (number%3==0 && number%5==0)
    console.log("FizzBuzz");
  else if (number%5==0)
    console.log("Buzz");
  else if (number%3==0)
    console.log("Fizz");
  else
    console.log(number);
  number++
}
//
// chapter 3
//
// What are the differences between local and global variables in JavaScript?
//
// Anything declared outside of a function is global since they are accessible
// anywhere in that program. Local variables are ones that are defined within
// functions.
//
// When should you use functions?
//
// Functions can be thought of as tools. If you may need a tool more than once,
// It's best to define it as a function so that it can be called upon as needed.
//
// What is a function declaration?
//
// It's a slightly shorter way of writing a function. Rather than:
//   var = function_name function(argument){do something;}
// You can write:
//   function function_name(argument){do something;}
//
// Complete the minimum exercise in the eloquent.js file.
//
function min(number1,number2){
  if(number1<number2)
    return number1;
  else
    return number2;
}
console.log(min(0,10));
console.log(min(0,-10));
//
// chapter 4
//
// What is the difference between using a dot and a bracket to look up a
// property? Ex. array.max vs array["max"]
//
// Both are used to access a property. The difference is in how, in this case,
// max is interpreted. array.max will retrieve the property max on the array.
// Whereas array["max"] will evaluate the string "max".
//
// Create an object called me that stores your name, age, three favorite foods,
// and a quirk in your eloquent.js file.
//
var me = {
  name: "Zollie",
  age: 25,
  favorite_foods: ["egg-in-hole", "lo mein", "spicy stuff"],
  quirk: "My skin doesn't get dry very often.",
}
console.log(me.name);
//
// What is a JavaScript object with a name and value property similar to in Ruby?
//
// A hash
//
// Release 2
//
// What are the biggest similarities and differences between JavaScript and Ruby?
//
// Similarities:
// Most of the symbols mean the same thing
// Lots of equatable actions even if under a different name (ex. methods/functions)
// Differences:
// So many f-ing semicolons in JS
// Error reports don't tell you much in JS
//
// Was some of your Ruby knowledge solidified by learning another language? If
// so, which concepts?
//
// As much as I hate the semicolons, I feel like I have a better sense for what is
// and isn't an expression. Having to translate concepts (such as methods to
// functions) has also solidified my understanding of them.
//
// How do you feel about diving into JavaScript after reading these chapters?
//
// A lot better.