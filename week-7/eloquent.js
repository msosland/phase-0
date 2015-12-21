// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var myVar = 100;
console.log(myVar);


// Chapter 2 question mini-exercise:
// commented because it cant run in node.
// var food = prompt("What is your favorite food?");
// if (food)
//   alert("Hey! That's my favorite too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var fizzBuzz = function() {
  for (var i = 1; i <= 100; i++) {
    if ((i % 3 == 0) && (i % 5 == 0))
      console.log("FizzBuzz");
    else if (i%5 == 0)
      console.log("Buzz");
    else if (i%3 == 0)
      console.log("Fizz");
    else
      console.log(i)
  }
};

fizzBuzz();

var looper = function() {
  output = "#";
  for (var i = 1; i <= 7; i++) {
    console.log(output);
    output += '#'
  };
};

looper()






// Functions

// Complete the `minimum` exercise.
function min(a, b) {
  if (a <= b)
    return a
  else
    return b
};

console.log(min(0, -10));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Marshall",
  age: 29,
  favoriteFoods: ["Salmon", "Broccoli", "Lentils"],
  quirk: "I'm not kidding about loving broccoli",
}