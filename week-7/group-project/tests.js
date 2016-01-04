
// Add the finished solution here when you receive it.
//
// __________________________________________

function sum(numbersArray) {
  var sum = 0;
  for (var index in numbersArray) {
    sum += numbersArray[index];
  }
  return sum;
}

// ###############
//
// Sum User Story:
//
// As a user, I want to be able to calculate the sum of a group of numbers.
//
// ###############

function mean(numbersArray) {
  return (sum(numbersArray) / numbersArray.length);
}

// ###############
//
// Mean User Story:
//
// As a user, I want to be able to calculate the mean value of a group of numbers.
//
// ###############

function median(numbersArray) {
  var sortedArray = numbersArray.sort(function(a, b) { return a - b;} );
  var middleIndex = Math.floor((sortedArray.length - 1) / 2);
  if (sortedArray.length % 2 != 0) {
    return (sortedArray[middleIndex]);
  }  else {
    return ((sortedArray[middleIndex] + sortedArray[middleIndex + 1]) / 2);
  }
}
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)