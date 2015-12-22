// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Ray Curran.

// Pseudocode

// Input: Number
// Output: string (number with commas)
// Steps:
// convert number to a string
// IF length of string < 4
//   return string
// ELSE
//   create for loop, start i at length of string, end when i = 0, go down by 3 each time
// take substring of last 3 characters
// insert comma
//   END
// END
// return string of numbers



// // Initial Solution
var separateComma = function(number) {
  var string = number.toString();

  if (string.length < 4)
    return string;
  else {
    var newString = "";
    for (var i = string.length; i > 0; i -= 3) {
      if (i > 3)
        newString = "," + string.substring(i-3, i) + newString;
      else
        newString = string.substring(0, i) + newString;
    };
    return newString;
  };
};



// Refactored Solution
// removed first if statement
var separateComma = function(number) {
  var string = number.toString();
  var newString = "";
  for (var i = string.length; i > 0; i -= 3) {
    if (i > 3)
      newString = "," + string.substring(i-3, i) + newString;
    else
      newString = string.substring(0, i) + newString;
  };
  return newString;
};



// Your Own Tests (OPTIONAL)
console.log(separateComma(223));
console.log(separateComma(10000));
console.log(separateComma(12384007223));


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma(12338007223) === "12,338,007,223"),
  "The return value should be 12,338,007,223",
  "1. "
)

assert(
  typeof separateComma(12223) === 'string',
  "The return value should be a string",
  "2. "
)

assert(
  (separateComma(100) === "100"),
  "The return value should be 100",
  "3. "
)

// //Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// Yes we did. In Ruby I kept taking the number % 10 to keep pulling the last digit off of the number and adding a comma
//  after every 3 pulls. Also in Ruby I believe I used the reverse method at the beginning and the end. We started looking
//  at it from a complete different angle because we did not know that many methods, but the substring method was in Eloquent
//  JS and we leaned on that.
//   And actually, I think this was the first time I have ever put an if/else statement inside of a for loop that
//   specifically targets the last few iterations of the counting variable.
// What did you learn about iterating over arrays in JavaScript?
// We did not iterate over arrays, but we iterated over the number after converting it to a string. We used a for loop
// to iterate by 3 indices at a time, and as long as there were at least 4 digits left we added a comma plus a substring to our newString.
// What was different about solving this problem in JavaScript?
// Well, we did not know as many built in methods. We only knew substring because it was in eloquent JS. That was basically
// all we used, with normal string concatenation and then JS syntax instead of ruby syntax. So I did not use any of the
// math/modulus I used in my Ruby solution to access digits, and we did not use slice or flatten or or reverse or anything with an array either.

// What built-in methods did you find to incorporate in your refactored solution?
// Substring and length was all we used, with normal concatenation.
// And I think this method is simpler than either of my Ruby solutions.
