// U3.W9:JQuery
// I worked on this challenge Roche Janken
// This challenge took me 1.25 hours.

$(document).ready(function(){
//RELEASE 0:
  //link the image
//RELEASE 1:
  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.
$('body').css({'background-color': 'pink'});
//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement= $('body');
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('body>h1').css('color', 'blue');
$('body>h1').css('border', '1px solid black');
$('body>h1').css('visibility', 'hidden');
$('.mascot>h1').html('Squirrels!');
$('img').css('border', '10px solid black');

//RELEASE 4: Event Listener
  // Add the code for the event listener here
  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://wpsd.images.worldnow.com/images/9612677_G.jpg')
    $('img').animate({
  opacity: 1.0,
  paddingLeft: "+=200",
  borderRadius: '50'}, 500)

   })

    $('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
    $('img').animate({
  opacity: 0.5,
  paddingLeft: "-=200",
  borderRadius: '0'}, 500)
    })

//RELEASE 5: Experiment on your own

// $('img').animate({
//   opacity: 0.25,
//   paddingLeft: "+=100"}, 5000)

//we put our animate experimenting inside our event handlers in release 4.





})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection-section-ection
// What is jQuery?
// JQuery is a JavaScript library that makes manipulating an HTML page simpler (supposedly) than using JS alone, and it is compatible across many browsers.
// JQuery can be used to select elements, traverse the DOM, animate elements, handle events, and work with Ajax.
// What does jQuery do for you?
// It is supposed to make HTML manipulation simpler with less code. JQuery methods wrap a lot of JS code under the hood, include compatibility checks so that you do not have to code that yourself.
// It works well in IE as far back as IE6, so it is great to not have to write extra conditional sections in your script files.
// What did you learn about the DOM while working on this challenge?
// I learned that it is a tree of elements that can be traversed easily, and with the .css method you can pretty much change any visual feature of any element.