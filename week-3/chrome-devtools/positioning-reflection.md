![colors]("imgs/colors.png")
![column]("imgs/column.png")
![row]("imgs/row.png")
![make_equidistant]("imgs/make_equidistant.png")
![squares]("imgs/squares.png")
![footer]("imgs/footer.png")
![header]("imgs/header.png")
![sidebar]("imgs/sidebar.png")
![get-creative]("imgs/get-creative.png")


#### How can you use Chrome's DevTools inspector to help you format or position elements?
It was much easier to mess around with Chrome's Devtools and see the immediate changes to the shapes, rather than trying to change css repeatedly in a file, save it, and refresh the file in chrome. It was immediate feedback. It was also super easy to check and uncheck one key:value pair at a time, and see what difference it would make.
#### How can you resize elements on the DOM using CSS?
The width and height are two ways to resize elements. They can be specified in pixels, ems, or percentages of the screen. Changing the display from block to inline may also change the div containers, because for example they may or may not run across the entire screen.
#### What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?
The fixed position places an element in a fixed location in relation to the screen's window. For example, a sidebar, header, or footer may want to use a fixed position so that it remains visible at the side/top/bottom even when the user scrolls through the page. (I found this easiest to understand so I explained it first.) Once an element has position set to fixed, you can set a top, bottom, right, or left key to the distance you want the element to be from the window's edges.
Static is the default position that all elements are originally in. It just means that the element will appear where it would under normal flow. If position is not set in CSS, the element will have a static position by default.
Relative position describes moving the element away from where it would have been originally from normal flow. In a simple example, typing five paragraphs on a page would usually put them one after the other moving down the page, with a minimal left margin. To move a paragraph away from it's normal location, you can set its position to relative, then adjust it. Putting top: 10px would then move the element down 10px from where it normally would have been. It could potentially begin to overlap with another element. Using position:relative does not affect the next statically positioned element (that element won't move to fill the space created by the relatively moved element)
Absolute positioning can move an element anywhere on the page. It will be relative to its nearest parent element with absolute or relative positioning. From it's new position, it will no longer affect the normal flow of other elements; however, the space it created when it was removed from it's normal location could now be filled by other elements.
#### What are the differences between margin, border, and padding?
I wrote a very lengthy blog post about this. It will be up by next week! But in a nutshell, the margin is the outermost layer of the element, and it specifies how much space there is between the element and another element or wall. The margin is transparent. The border is the next layer of the element. It can be solid, dotted, dashed, rounded, thick, thin, or many other styles. It can also be set to none or not set at all if no visible border is desired. The padding is the amount of space in between the element and the border. It is also transparent, but it is like an internal margin between the element and border. From outside to inside, it goes margin, border, padding, element.
#### What was your impression of this challenge overall? (love, hate, and why?)
I liked it a lot. It was cool to isolate different traits of div elements to get the containers to appear in different ways. It was nice to go through them one by one and reset the page to default each time. And I enjoyed using DevTools much more than changing css in sublime, saving, and refreshing every time.