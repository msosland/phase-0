//In this challenge I will try to recreate the credit card challenge from Ruby

//Psuedocode:
//CREATE object with 2 properties
//  SET number property to value number given
//  CREATE check method to check if number is valid
//    within check method:
//    IF number is not 16 digits RETURN false
//    ELSE
//      double every other digit
//      split all two-digit numbers to two single digits
//      add all digits together
//      IF sum divisible by 10, RETURN true ELSE false


//Initial
//I always end up using constructors....
function Card(number) {
  this.number = number;
  this.check = function() {
    if (this.number.toString().length != 16) {
      console.log("length");
      return false;
    } else {
      var array = [];
      for (var i = 0; i <= 15; i++) {
        array.push(this.number.toString()[i]);
      }

      for (var i = 0; i <= 15; i++) {
        if (i % 2 == 0) {
          array[i] = (array[i]*2).toString();
        }
      }

      var sum = 0;
      for (var i = 0; i <=15; i++) {
        if (array[i] < 10) {
          sum += Number(array[i]);
        } else {
          sum = sum + 1 + (Number(array[i]) % 10);
        }

      }
      return (sum % 10 == 0);
    }
  }
}

// var test = new Card(438572834758);
// console.log(test.check());
// var test2 = new Card(4563960122001999);
// console.log(test2.check());

//just to practice an object literal
var card = {
  number: 4563960122001999,
  check: function() {
    if (this.number.toString().length != 16) {
      console.log("length");
      return false;
    } else {
      var array = [];
      for (var i = 0; i <= 15; i++) {
        array.push(this.number.toString()[i]);
      }

      for (var i = 0; i <= 15; i++) {
        if (i % 2 == 0) {
          array[i] = (array[i]*2).toString();
        }
      }

      var sum = 0;
      for (var i = 0; i <=15; i++) {
        if (array[i] < 10) {
          sum += Number(array[i]);
        } else {
          sum = sum + 1 + (Number(array[i]) % 10);
        }

      }
      return (sum % 10 == 0);
    }
  }
}

// console.log(card.number);
// card.number = 48000000000;
// console.log(card.number);
// console.log(card.check());

//refactored
var card = {
  number: 4563960122001999,
  check: function() {
    var numString = this.number.toString();
    if (numString.length != 16) {
      throw "Number must have 16 digits";
      return false;
    } else {
      var array = [];
      for (var i = 0; i <= 15; i++) {
        array.push(Number(numString[i]));
      }
      for (var i = 0; i <= 15; i++) {
        if (i % 2 == 0) {
          array[i] = (array[i]*2);
        }
      }
      var sum = 0;
      for (var i = 0; i <=15; i++) {
        if (array[i] < 10) {
          sum += (array[i]);
        } else {
          sum = sum + 1 + ((array[i]) % 10);
        }

      }
      return (sum % 10 == 0);
    }
  }
}

console.log(card.number);
console.log(card.check());
card.number = 48000000000;
console.log(card.number);
console.log(card.check());

//Reflection
// What concepts did you solidify in working on this challenge?
// Well first I made sure I could create both a constructor function for multiple cards, but also just
// an object literal where I can set the number whenever I want to.
// I think I got good practice doing type conversion from numbers to strings in JS and also iterating with for loops.
// From what I have read iterating through a string with a for loop is just as
// fast as anything, even though the code is a little longer than the ruby equivalent.
// I also threw in a throw exception message just to see what would happen.

// What was the most difficult part of this challenge?
// It was not difficult, it was just more iteration with for loops and type conversions.
// Though I still always by default like to create constructor functions instead of object literals. So i made sure to do both this time.

// Did you solve the problem in a new way this time?
// It was new because there were not built in methods. In my ruby version I used each_char to iterate through a string twice.
// This time I just used multiple for loops. The type conversion was a little different with
// number() and tostring() vs to_i and to_s. Also I never joined the array back into a string...
//  instead I just added 1 (for the tens digit) and array[i]%10 (for the ones digit)...
//   I actually forgot about joining until just now looking at my ruby.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// It was mostly the same.