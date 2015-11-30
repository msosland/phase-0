ruby
puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hola " + first_name + " " + middle_name + " " + last_name + "!"


puts "What is your favorite number?"
number = gets.chomp
number = number.to_i + 1
puts "And " + number.to_s + " is an even bigger, better favorite!"

=begin
How do you define a local variable?
  You define a local variable by assigning a placeholder to data using the = sign. The local variable should start with a lowercase letter and use an underscore between words, by popular convention.
How do you define a method?
  You define a method using the keyword def followed by the method name and optionally parameters. After the indented code inside the method, you type end to close out your method definition.
What is the difference between a local variable and a method?
  A local variable stores data inside a placeholder, whereas a method is typically an action you want to be able to do or call on an object.
How do you run a ruby program from the command line?
  Type ruby filename.rb to run the file filename.rb
How do you run an RSpec file from the command line?
  Type rspec filename.rb to the run the rspec file filename.rb
What was confusing about this material? What made sense?
  I forgot in both exercies that puts would return nil and that the exercises wanted to return the output. All of the arithmetic and type conversions make sense to me. Defining and using methods makes sense to me also.

  Links to my exercises:
https://github.com/msosland/phase-0/blob/master/week-4/math/my_solution.rb

https://github.com/msosland/phase-0/blob/master/week-4/address/my_solution.rb

https://github.com/msosland/phase-0/blob/master/week-4/define-method/my_solution.rb


=end


