# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: creating a Die class with several methods
# the initialize method takes in a number of sides
# the sides method takes no parameters
# the roll method takes in no parameters
# # Output:
# the initialize method sets the number of sides to an objects number of sides
# the sides method returns the number of sides
# the roll method returns a random side
# # Steps:
# for initialize, i am just going to create an instance variable whose value is sides. i am going to raise an argument error if the number is less than 1 side
# for sides, i just return the side
# for roll, i will just return a random number in a range from 1 to the number of sides, inclusive.


# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides >= 1
      raise ArgumentError.new("Die must have at least one side!")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end



# 3. Refactored Solution
class Die
  def initialize(sides)
    unless sides >= 1
      raise ArgumentError.new("Die must have at least one side!")
    end
    @sides = sides
  end

  attr_reader :sides

  def roll
    rand(1..@sides)
  end
end



# 4. Reflection
# What is an ArgumentError and why would you use one?
# Typically an ArgumentError is raised when the wrong number of arguments are passed to a method. However, it can also
# be manually raised when an unacceptable argument is passed, as in this exercise.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# Well, it was my first time writing a class in Ruby, so it was the first time I wrote an initalize method and an attribute
# reading method. It was pretty easy after watching the video and I have had extremely brief experience creating
# classes in Python in a similar fashion.

# What is a Ruby class?
# A class is a blueprint to make objects which provides behaviors and methods for object instances of the class.

# Why would you use a Ruby class?
# It would be very useful when you want to create a lot of unique objects that all share the same behaviors. For example,
# a customer class where you want to create hundreds of unique customer objects that all have common methods.
# What is the difference between a local variable and an instance variable?
# A local variable is limited in scope to the block it is called in, often a method, and can not be accessed outside
# nor interfered with. Many methods can use a local variable 'x' for example and the values will not interfere
# with one another. Instance variables have a bigger scope and can be accessed anywhere within an instance of an object.
# Each object can have only one value associated with @x, for example. And @x can be used within different methods of an object.

# Where can an instance variable be used?
#   An instance variable can be used in an instance of an object. Each object can have its own instance variable, so in
#   the Die class each die object can have its own @sides instance variable, and each object can access its instance
#   variable within its self.