// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Alana Hanson:
// This challenge took me 1 hours.

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
// loop over ballots within votes
// check to see if name is already in position in voteCount
// if it is
// increment value by 1
// else
// create name as property and set value to one
// find name with greatest value in each position inside of voteCount and assign that to the correct property in officers


// __________________________________________
// Initial Solution
for (var voter in votes) {
  if (votes.hasOwnProperty(voter)) {
    var ballot = votes[voter];
  for (var seat in ballot) {
    if (ballot.hasOwnProperty(seat)) {
    if (seat == "president") {
      var x = ballot[seat];
      if (voteCount.president.hasOwnProperty(x)) {
        voteCount.president[x] += 1;
      }
      else {
        voteCount.president[x] = 1;
      }
    }
    if (seat == "vicePresident") {
      var x = ballot[seat];
      if (voteCount.vicePresident.hasOwnProperty(x)) {
        voteCount.vicePresident[x] += 1;
      }
      else {
        voteCount.vicePresident[x] = 1;
      }
    }
    if (seat == "secretary") {
      var x = ballot[seat];
      if (voteCount.secretary.hasOwnProperty(x)) {
        voteCount.secretary[x] += 1;
      }
      else {
        voteCount.secretary[x] = 1;
      }
    }
    if (seat == "treasurer") {
      var x = ballot[seat];
      if (voteCount.treasurer.hasOwnProperty(x)) {
        voteCount.treasurer[x] += 1;
      }
      else {
        voteCount.treasurer[x] = 1;
      }
    }
  }
  }
  }
}

for (var seat in voteCount) {
  if (voteCount.hasOwnProperty(seat)) {
    var tally = voteCount[seat];
    var currentLeader = '';
    var numVotes = 0;
    for (var name in tally) {
      if (tally.hasOwnProperty(name)) {
        if (tally[name] > numVotes) {
          numVotes = tally[name];
          currentLeader = name;
        }
      }

    }
    officers[seat] = currentLeader;
  }
}

// console.log(officers);


// __________________________________________
// Refactored Solution

var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

for (var voter in votes) {
  if (votes.hasOwnProperty(voter)) {
    var ballot = votes[voter];
    for (var seat in ballot) {
      if (ballot.hasOwnProperty(seat)) {
        var x = ballot[seat];
        if (voteCount[seat].hasOwnProperty(x)) {
          voteCount[seat][x] += 1;
        }
        else {
          voteCount[seat][x] = 1;
        }
      }
    }
  }
}


for (var seat in voteCount) {
  if (voteCount.hasOwnProperty(seat)) {
    var tally = voteCount[seat];
    var currentLeader = '';
    var numVotes = 0;
    for (var name in tally) {
      if (tally.hasOwnProperty(name)) {
        if (tally[name] > numVotes) {
          numVotes = tally[name];
          currentLeader = name;
        }
      }
    }
    officers[seat] = currentLeader;
  }
}

console.log(officers);






// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// //We had to check to make sure the object.hasOwnProperty inside of every for..in loop. The stack overflow link says that
//  otherwise you will loop through the object's prototype, built-in meta key/value piars, and hasOwnProperty filters them out.
//   We also had to use mostly bracket notation since we were accessing variable names, not actual key names.
// //
// Were you able to find useful methods to help you with this?
// We basically just used for..in loops and the hasOwnProperty method. We did not use any other new syntax
// //
// What concepts were solidified in the process of working through this challenge?
// Checking to make sure the object.hasOwnProperty, using bracket notation for variables,
// and naming variables well to eliminate some confusion when working with nested objects.






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