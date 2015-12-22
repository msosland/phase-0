 // JavaScript Olympics

// I paired with Kevin Huang on this challenge.

// This challenge took me 1.5 hours.


// Warm Up



function win (athlete) {
  athlete.win = athlete.name + " won the " + athlete.event + "!";
  console.log(athlete.win)
};
var sarah = {name: "sarah hughes", event: "ladies' singles"};

win(sarah);


// Jumble words , reverse initial solution
function reverse(string) {
  var newstring = "";
  for (var i = string.length - 1; i >= 0; i--){
    newstring += string [i];
  }
  return newstring;
}

//test code
console.log(reverse("blah"));

//returning only the evens from array - initial solution

function evens(array) {
  var newArray = [];
  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0)
      newArray.push(array[i]);
  };
  console.log(newArray);
};

//refactored solution
function evens(array) {
  return array.filter(function(v){return v % 2 == 0;});
};


//test code
// evens([1, 2, 3, 4, 4, 5, 6, 9, 10])
var arr = [1, 2, 3, 4, 4, 5, 6, 9, 10]
console.log(evens(arr))

// "We built this city"
function Athlete (name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

//Driver code below
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// Solidify is a strong word, but we got practice writing function declarations and then calling those functions that we had written.
// I also get the sense that there are less built-in methods in JS so we had to get comfortable looping with JS syntax.
// We did learn about the array filter method and fed it a function to return only even numbers from our array.
// Also used a lot of dot notation to access objects properties and values.

// What are constructor functions?
// Constructor functions are convenient ways to make multiple instances of an object, similar to a class in Ruby.

// How are constructors different from Ruby classes (in your research)?
// First thing I notice is that instead of creating instance variables in ruby with @name = name, I write this.name =
// name in JS to set a particular instance's name.
// Constructors are also written as functions with an object of property value pairs (which look similar to Ruby hashes).
// Also, while Ruby requires attr_* family methods to read or write an instance variable, all public properties in a JS
// Constructor have the read and write methods built-in - you can read a value with dot or bracket notation and you can change
// it with a equals sign assignment. All without having a get or set method specifically defined.
// Overall though, their purpose is very similar.