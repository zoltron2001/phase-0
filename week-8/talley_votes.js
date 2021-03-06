// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Yi Lu
// This challenge took me [1.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
/*
1 iterate through votes, record votes into voteCount

  a. 1st to iterate through voters: e.g. alex, bob, ...
  b. 2nd to iterate through voters' final votes

  c. add the vote to voteCount
  d. IF the nominee does not exist in voteCount, then set the value for nominee to be 1
    OTHERWISE, increase the value by 1

2 onces recorded to voteCount, assign winner into officers
  a. iterate through voteCount and find the biggest value for each position and return the nominee's name/position

*/
// __________________________________________
// Initial Solution

// function check_nominee (position, nominee) {
//   if (voteCount[position].hasOwnProperty(nominee)){
//     voteCount[position][nominee] += 1;}
//   else {
//     voteCount[position][nominee] = 1;
//   }
// };

// for (var student in votes) {
//   for (var position in votes[student]) {
//     check_nominee (position, votes[student][position]);
//   }
// };

// function max (tally) {
//   var max_vote = null;
//   var winner = null;
//   for (var name in tally) {
//     if (max_vote === null) {
//       max_vote = tally[name];
//       winner = name;
//     }
//     else if (tally[name] > max_vote) {
//              max_vote = tally[name];
//              winner = name;
//     }
//   }
//   return winner;
// };

// for (var nominee in officers) {
//   officers[nominee] = max(voteCount[nominee]);
// };

// __________________________________________
// Refactored Solution

// checks if nominee exists in voteCount
//  if it does add one, otherwise put it in there
function check_nominee (position, nominee) {
  if (voteCount[position].hasOwnProperty(nominee)){
    voteCount[position][nominee] += 1;}
  else {
    voteCount[position][nominee] = 1;
  }
};
// loop through voters and run check_nominee on their votes
for (var student in votes) {
  for (var position in votes[student]) {
    check_nominee (position, votes[student][position]);
  }
};

// loop through positions officers list
// assign positions to list of nominees sorted by vote count
for (var position in officers) {
  officers[position] = Object.keys(voteCount[position]).sort(function(a,b){
    return voteCount[position][b]-voteCount[position][a]
  })[0];
};


// __________________________________________
// Reflection

/*

What did you learn about iterating over nested objects in JavaScript?

  Definitely gotta use that For Loop for the objects. I struggled with knowing what names to call. Even now that I've solved this, when I read through, I'm just trying to keep track of all the names we used and how they change. If this were ruby, I'd pop all this into a class and use instance variables to unify some of these terms.

Were you able to find useful methods to help you with this?

  Yeah, #sort was pretty cool. It allowed us to get rid of a big chunk of code meant to compare the number of votes nominees had recieved. Once the order was sorted, we just had to return the first element to declare a winner.

What concepts were solidified in the process of working through this challenge?

  The power of refactoring. I know I said I'm confused even now by this code, but you should have seen me during the initial solution. All that "tally" business had me cross eyed.

*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)