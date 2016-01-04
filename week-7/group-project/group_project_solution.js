//User stories by Marshall Sosland - Person 1

// As a user, I want to have a function called sum that can iterate through an array and add all the elements of the array.

// As a user, I want to have another function called mean that can find the average of all the numbers in an array.

// As a user, I also want to have a function called median that can find the median of all the numbers in an array.
//I really want it to work for both arrays with an odd number of elements and those with an even number of elements!

//This is what I got back from the release 4 person. All tests passed.

// 7.8 JavaScript Telephone
// Release 4: Refactor and Translate to User Stories
// Author: Kevin Huang


// Refactored code + User Stories below:

function sum(numbersArray) {
  var sum = 0;
  for (var index in numbersArray) {
    sum += numbersArray[index];
  }
  return sum;
}

// // ###############
// //
// // Sum User Story:
// //
// // As a user, I want to be able to calculate the sum of a group of numbers.
// //
// // ###############

function mean(numbersArray) {
  return (sum(numbersArray) / numbersArray.length);
}

// // ###############
// //
// // Mean User Story:
// //
// // As a user, I want to be able to calculate the mean value of a group of numbers.
// //
// // ###############

function median(numbersArray) {
  var sortedArray = numbersArray.sort(function(a, b) { return a - b;} );
  var middleIndex = Math.floor((sortedArray.length - 1) / 2);
  if (sortedArray.length % 2 != 0) {
    return (sortedArray[middleIndex]);
  }  else {
    return ((sortedArray[middleIndex] + sortedArray[middleIndex + 1]) / 2);
  }
}


// ###############
//
// Median User Story:
//
// As a user, I want to be able to find the median in a group of numbers.
//
// ###############

//Comment from Marshall Sosland Person 1
/* All of the tests passed when I received back this refactored code at the end of the week.
I was actually thinking that the mean test would not pass because I did not specify in my original user stories
how many decimal places to return the mean and I did not at the time look up the floating point rules of JS. Fortunately JS returns a lot of decimals when dividing integers.
The tests had already been run when I received back the code... so I cannot say if they guided anyone's code. That was probably in error.

*/