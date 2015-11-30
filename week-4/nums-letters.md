##### What does puts do?
puts returns nil and prints what comes after it to the console with a new line
##### What is an integer? What is a float?
An integer is a number without a decimal place, and a float is a number with a decimal place.
##### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
In programming, when you divide one integer by another, the answer will be the number to the left of the decimal point of the mathematically complete answer. It can also be considered the number of times the divisor fully goes into the dividend, with the remainder thrown away. Thus 11/2 is only 5, and the 1 remainder is ignored. However, float division will return the remainder in the answer. Thus, 11.0/2.0 will be 5.5.

Mini-challenges (Longer exercise links at bottom)

```ruby
puts 24*365
```

```ruby
puts 60*24*365*10
```
##### How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Pretty straightforwardly. The only quirk is that if two integers are added, subtracted, multiplied, or divided, the result will be an integer, and in division that may result in a remainder being tossed out. If either number is a float, the answer will be a float, and that includes a decimal point and a zero if the answer is a whole number.
##### What is the difference between integers and floats?
Floats have decimals, integers do not.
##### What is the difference between integer and float division?
Float division returns a remainder to the right of a decimal place, even if it is zero. 10.0/2.0 = 5.0, and 11.0/2 = 5.5. Integer division does not return a remainder and rounds down to the nearest whole number, so 11/2 = 5.
##### What are strings? Why and when would you use them?
Strings can be empty, or full of any combination of letters, numbers, or characters. Strings are most frequently used for words or phrases and are commonly used to store a group of characters or to communicate information to a user.
##### What are local variables? Why and when would you use them?
Local Variables are placeholders that are assigned to a string, number, boolean, or other object inside of a method, for example. Variables in general are commonly used so that the data they are representing does not have to be repeatedly typed. They can also be changed easily as a program runs or takes parameters. Local variables specifically are only accessible inside the method they are running in. Thus they will not interfere with same-named variables outside the method. If a program has dozens of methods, the programmer will not have to worry that each of the local variables inside of the methods uses a different name, because their scope will be limited to their specific method.
##### How was this challenge? Did you get a good review of some of the basics?
I did get some review of the basics, and I like how concise each of the book's chapters are. The book makes it easy to focus on just one small thing at a time.

Links to my exercises:

[defining-variables](http://github.com/msosland/phase-0/blob/master/week-4/defining-variables.rb)
[basic-math](http://github.com/msosland/phase-0/blob/master/week-4/basic-math.rb)
[simple-string](http://github.com/msosland/phase-0/blob/master/week-4/simple-string.rb)