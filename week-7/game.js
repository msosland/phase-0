// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Create a trivia bank where the user learns facts about different countries.

// Goals: Eventually, transform JS code into interactive html page where user can click on different buttons to learn about different countries.

// Characters: There is essentially just a user, and each user can keep track of what he/she has learned.

// Objects: There will be multiple Country objects, and there will be User objects. See pseudocode for more details.

// Functions: There are four functions. In the Country object, there is a function called decrement which decreases the unread property, and a function called fact which displays a fact about the country.
//In the User object, there is a function called display countries that displays all the countries the user has been to, and a function called visit that goes a learns a fact about a country.


// Pseudocode
//Create object constructor function to create multiple Country objects.
// EACH Country object will have:
//   a name property with the Country's name value
//   a Capital property set to value the Country's Capital
//   a Population property set to value the Country's Population
//   a largest city property set to the value of the country's largest city
//   an Unread property initially set to 3 (number of facts)
//   a method to decrement the unread property (just to create an extra method for fun)
//   A method called fact which prints one random fact about the Country and then calls the decrement function
  //   IF unread is SET to
  //       3: return capital name/value
  //       2: return population name/value
  //       1: return largest city name/value
  //       0: tell user all facts learned, reset to 3, return capital name/value
  //   call decrement function

// CREATE user object constructor:
//   SET visited property to empty array
//   SET factsLearned property to 0.
//   displayCountries method:
//      FOR EACH country in visited, print out country name
//   visit method:
//      when another country is visited:
//        run that country's fact method.
//        PUSH country to user's visited array if not present
//        INCREMENT facts learned

//create a lot of Country objects
//create a user object to visit countries.


// Initial Code

//here I am creating a Country object constructor:
function Country(name, capital, population, largestCity) {
  this.name = name;
  this.capital = capital;
  this.population = population;
  this.largestCity = largestCity;
  this.unread = 3;
  this.decrement = function() {
    this.unread--;
  }
  this.fact = function() {
    var remaining = this.unread;
    if (remaining == 0) {
      console.log("You have already learned about " + this.name + "! Resetting facts so you can review!");
      this.unread = 3;
      this.fact();
    }
    else if (remaining == 3) {
      console.log("The capital of " + this.name + " is " + this.capital + ".");
      this.decrement();
    }
    else if (remaining == 2) {
      console.log("The population of " + this.name + " is " + this.population + ".");
      this.decrement();
    }
    else if (remaining == 1) {
      console.log("The largest city of " + this.name + " is " + this.largestCity + ".");
      this.decrement();
    }
  }
}

//here I am creating a bunch of Country objects. Thanks wikipedia!
var peru = new Country('Peru', 'Lima', '31 million', 'Lima');
var colombia = new Country('Colombia', 'Bogot\341', '48 million', 'Bogot\341');
var mongolia = new Country('Mongolia', 'Ulaanbaatar', '3 million', 'Ulaanbaatar');
var china = new Country('China', 'Beijing', '1.37 billion', 'Shanghai');
var uae = new Country('United Arab Emirates', 'Abu Dhabi', '9 million', 'Dubai');
var brazil = new Country('Brazil', 'Bras\355lia', '205 million', 'S\343o Paulo');
var canada = new Country('Canada', 'Ottawa', '36 million', 'Toronto');
var india = new Country('India', 'New Delhi', '1.3 billion', 'Mumbai');
var morocco = new Country('Morocco', 'Rabat', '34 million', 'Casablanca');
var tanzania = new Country('Tanzania', 'Dodoma', '50 million', 'Dar es Salaam');
var australia = new Country('Australia', 'Canberra', '24 million', 'Sydney');

//here I will create an array of all the country objects in case I want to use it later
var database = [peru, colombia, mongolia, china, uae, brazil, canada, india, morocco, tanzania, australia];

//here I am creating a user object so perhaps there can be multiple learners
function User() {
  this.visited = [];
  this.factsReviewed = 0;
  this.displayCountries = function() {
    if (this.visited.length == 0) {
      console.log("You have not visited any countries yet!");
    }
    else {
      var string = '';
      for (var i = 0, j = this.visited.length; i < j; i++) {
        string += this.visited[i] + " ";
      };
      console.log("Countries visited: " + string);
    }
  };
  this.visit = function(place) {
    console.log("Visiting " + place.name + "...");
    place.fact();
    this.factsReviewed++;
    if (this.visited.indexOf(place.name) === -1) {
      this.visited.push(place.name);
    };
    this.displayCountries();
    console.log("Facts reviewed: " + this.factsReviewed);
    console.log("");
  }
}

//creating myself as a user
var marshall = new User;
marshall.displayCountries();
//touring the world and learning
marshall.visit(india);
marshall.visit(china);

marshall.visit(india);
marshall.visit(india);
marshall.visit(china);
marshall.visit(brazil);
marshall.visit(peru);
marshall.visit(morocco);
marshall.visit(colombia);
marshall.visit(uae);
marshall.visit(tanzania);



marshall.displayCountries();



// console.log(marshall.visited);
// console.log(marshall.factsReviewed);


// Refactored Code






// Reflection
// What was the most difficult part of this challenge?
// My pseudocode is pretty bad. I see two causes - one is that I kept changing my mind about what I was going to have my objects and functions do, then I would go back and pseudocode that part, or adjust the pseudocode that I had already written.
// That obviously defeats the purpose of pseudocode to guide code, though I still used my pseudocode to guide the majority of my original code.
// Also, as the programs I write get more complex, I find it really hard to pseudocode the entire program beforehand because I am really not sure how the program is going to unfold. I was reacting a lot to how my program was working, then improving it, which strayed from my original pseudocode.
// There were also several array properties I really missed from Ruby. I will reflect more about these later in the reflection.

// What did you learn about creating objects and functions that interact with one another?
// I thought it was fairly straightforward, though I did learn that my parameters had to be variables, not strings. For example, when I called the visit method on the user, marshall.visit(india); works, and marshall.visit('india'); does not work, because I cannot call methods on the string india, only the variable/object india.
//I also wanted to put in some exception handling to handle the user trying to visit countries not in the database, but I figured I could review that another time, and in my vision for the html page, the countries that exist would be buttons (so that a user cannot visit a country that does not exist). I was not able to simply put an if statement for a bad parameter, because in javascript a bad parameter was an undefined object and it threw an error.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// Well, i used .indexOf === -1 to determine whether an element was in an array.
//I tried using !(elem in array), but I was having problems possibly because of confusion over whether I was searching for india the object, 'India' the place name, 'india' the string etc.
// How can you access and manipulate properties of objects?
// Dot notation and bracket notation are the ways to access properties and values of objects, and dot notation is probably more common for any property that is a valid variable name (no spaces, isnt a number, etc). So place.name or place.capital is how I accessed Country values. But I could have also used place["name"], etc.
//I put methods inside my object contructors to create the functions I would be using to manipulate my objects. Ultimately, my program runs from the point of view of the user, and calls methods on the user, but some of those methods (like visit) call a method on the country (like fact). It is neat to be able to call place.fact() inside my user.visit() method.
//For extra practice, I pulled some code out of the .fact and .visit methods to create two more smaller methods - the display countries method for the user and the decrement function for the Country objects.