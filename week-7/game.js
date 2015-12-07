 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Defeat your oponent.
// Goals: Choose your character. Attack. Don't die.
// Characters: Inigo Montoya, Count Rugen
// Objects: CPU Character, User Character,
// Functions: Assign Character, Attack, Update Health, Report Outcomes,
//            End Game

// Pseudocode
/*
objects
Create four banks of actions with their respective outcomes
Create usr and cpu starting information

functions
update usr and cpu names
request attack
 print request for attack
 recieve attack
 recieve users input and assign it to usr attack
 return error if improper input and re-route to request attack
compute results
  randomize and assign  cpu attack
  update character health
report outomes
  print results
  re-route to request attack IF cpu AND usr are alive

Lunge
  .5 Gives and recieves half damage in case of lunge
  1 Gives a full point of damage in case of Balestra
  -1 Vulnerable to counter attack
  0 Nothing happens in case of block
Block
  0 Nothing happens in case of block or counter attack
  0 Stops Lunges
  -1 Vulnerable to Balestra
Counter Attack
  1 Reprises attacks with full point of damage
  0 Nothing happens in case of block or counter attack
  -1 Vulnerable to Balestra
Balestra
  0 Nothing happens in case of Balestra
  1 Catches counter attacking and blocking opponents off guard
  -1 Vulnerable to lunge
*/

// // Initial Code

// // var tutorial = {
// //   lunge: ["Gives a full point of damage to those that Balestra.","Vulnerable to counter attack."],
// //   block: ["Stops all attacks except Balestras (-1 point)."],
// //   counter_attack: ["Reprises attacks with full point of damage.","Vulnerable to Balestras"],
// //   balestra: ["Catches blockers and counter attackers off guard.","Vulnerable to lunge."]};

// // array order: lunge, balestra, counter_attack, block
// var attacks = [[0,1,-1,0],[-1,0,1,1],[1,-1,0,0],[0,-1,0,0]];
// var usr = {health: 10,};
// var cpu = {health: 10,};
// var result = 0;
// var game_over = false;

// // function print_tutorial() {
// //   console.log(tutorial.lunge[0]);
// // };

// function update_name() {
//   console.log("Will you play as Inigo Montoya or Count Rugen?");
//   console.log("  Inigo Montoya: His father was slaughtered by a six-fingered man.");
//   console.log("  Count Rugen: You killed his father. Prepare to die.");
//   var character = prompt("Enter 'm' for Inigo Montoya, otherwise you are Count Rugen.");
//   if (character === "m") {
//     usr.name = "Inigo Montoya";
//     cpu.name = "Count Rugen";}
//   else {
//     usr.name = "Count Rugen";
//     cpu.name = "Inigo Montoya";}
// }

// function attack() {
//   console.log("How will you attack?");
//   var usr_attack = prompt("Enter 'l' for lunge, 'bl' for block, 'c' for counter attack, or 'ba' for balestra and lunge.");
//   var cpu_attack = Math.floor((Math.random() * 4) + 0);
//   // array order: lunge, balestra, counter_attack, block
//   // translate input
//   if (usr_attack == "l") {
//     result = attacks[0][cpu_attack];
//   }
//   else if (usr_attack == "ba"){
//     result = attacks[1][cpu_attack];
//   }
//   else if (usr_attack == "c"){
//     result = attacks[2][cpu_attack];
//   }
//   else if (usr_attack == "bl"){
//     result = attacks[3][cpu_attack];
//   }
//   else
//     attack();
// }

// function update_health() {
//   if (result > 0) {cpu.health -= result;}
//   else {usr.health += result;}
// }

// function report_results() {
//   if (result > 0) {
//     console.log("Success! "+cpu.name+" was assessed 1 point of damage. His health is now at "+cpu.health+"/10.");
//   }
//   else if (result < 0) {
//   console.log("Ouch! "+cpu.name+" managed to strike you. You have been assessed 1 point of damage. Your health is at "+usr.health+"/10.");
//   }
//   else {console.log("Neither move was effective. No damage was assessed.");}
// }

// function end(){
//   if (usr.health <= 0) {
//     if (usr.name === "Inigo Montoya") {
//       console.log("You mutter, 'Sorry father, I tried. I tried.'");
//     }
//     else {
//       console.log("You slouch over in disbelief.");
//     game_over = true;
//     }
//   }
//   if (cpu.health <= 0) {
//     if (usr.name === "Inigo Montoya") {
//       console.log("You mutter, 'I want my father back you son of a b**** and stumble off.'");
//     }
//     else {
//       console.log("Did that little Spanish runt pursue you his entire life only to die now? That might be the saddest thing you've ever heard of.");
//     game_over = true;
//     }
//   }
// }


// // Driver Code
// // print_tutorial();
// update_name();
// attack();
// update_health();
// report_results();
// end();

// Refactored Code

// array order: lunge, balestra, counter_attack, block
var attacks = [[0,1,-1,0],[-1,0,1,1],[1,-1,0,0],[0,-1,0,0]];
// objects
var usr = {health: 10,};
var cpu = {health: 10,};
// global variables
var result = 0;
  // tracks results from attacks
var game_over = false;

function update_name() {
  console.log("Will you play as Inigo Montoya or Count Rugen?\n  Inigo Montoya: His father was slaughtered by a six-fingered man.\n  Count Rugen: You killed his father. Prepare to die.");
  var character = prompt("Enter 'm' for Inigo Montoya, otherwise you are Count Rugen.");
  if (character === "m") {
    usr.name = "Inigo Montoya";
    cpu.name = "Count Rugen";}
  else {
    usr.name = "Count Rugen";
    cpu.name = "Inigo Montoya";}
}

function attack() {
  var usr_attack = prompt("How will you attack? Enter 'l' for lunge, 'bl' for block, 'c' for counter attack, or 'ba' for balestra and lunge.");
  // randomize cpu move
  var cpu_attack = Math.floor((Math.random() * 4) + 0);
  // translate input into result
  if (usr_attack == "l") {
    result = attacks[0][cpu_attack];
  }
  else if (usr_attack == "ba"){
    result = attacks[1][cpu_attack];
  }
  else if (usr_attack == "c"){
    result = attacks[2][cpu_attack];
  }
  else if (usr_attack == "bl"){
    result = attacks[3][cpu_attack];
  }
  else
    attack();
}

function update_health() {
  if (result > 0) {cpu.health -= result;}
  else {usr.health += result;}
}

function report_results() {
  if (result > 0) {
    console.log("Success! "+cpu.name+" was assessed 1 point of damage. His health is now at "+cpu.health+"/10.");
  }
  else if (result < 0) {
  console.log("Ouch! "+cpu.name+" managed to strike you. You have been assessed 1 point of damage. Your health is at "+usr.health+"/10.");
  }
  else {console.log("Neither move was effective. No damage was assessed.");}
}

function end(){
  if (usr.health <= 0) {
    if (usr.name === "Inigo Montoya") {
      console.log("You mutter, 'Sorry father, I tried. I tried.'");
    }
    else {
      console.log("You slouch over in disbelief.");
    }
    game_over = true;
  }
  if (cpu.health <= 0) {
    if (usr.name === "Inigo Montoya") {
      console.log("You mutter, 'I want my father back you son of a b**** and stumble off.'");
    }
    else {
      console.log("Did that little Spanish runt pursue you his entire life only to die now? That might be the saddest thing you've ever heard of.");
    }
    game_over = true;
  }
}

// Driver Code
update_name();
while (game_over === false) {
  attack();
  update_health();
  report_results();
  end();
}

// Reflection
/*
What was the most difficult part of this challenge?

  Terminal doesn't like the prompt command, so all my testing was done on
  'JSHint' (for debugging) and Chrome's dev tools (to execute code). It'd
  be nice if I could test everything in one place.

What did you learn about creating objects and functions that interact with
one another?

  It definitely helps to write things out first. Without pseudocoding, I
  think I would have had too many functions. Otherwise, as long as your
  calling things properly, it isn't overly complicated. You can call object
  values for strings by writing the corresponding 'object.key' and
  concatening it with strings.

Did you learn about any new built-in methods you could use in your
refactored solution? If so, what were they and how do they work?

  Math.floor() rounds a number down to the nearest integer.
  Math.random() returns a random number between 0 and 1.

  Between the two of them you can return a random number in a range. It
  looks like this with the inner number representing the max and the outer
  the min:

    Math.floor((Math.random() * 10) + 1);

  Although, I have to admit, I don't entirely understand why those numbers are
  determining the range. I've found a lot of explanations on how to use the
  functions, but nothing on why the range works like that.

How can you access and manipulate properties of objects?

  Object property values are accessed like this:
    object.property;
  Object properties can be created and/or altered like this:
    object.property = value;
    or even
    object.property += 1;

*?