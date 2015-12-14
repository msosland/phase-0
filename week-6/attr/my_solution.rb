#Attr Methods

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: for namedata, there will be an initialize method that runs automatically when an instance is created, with no input. for greetings, there will be an initialize method and a hello method. Neither will take input.
# Output: for namedata, the initialize method sets an instance variable name to my name. for greetings, the initialize method creates a new instance of namedata class, and the hello method prints a hello to the console.
# Steps:
# create namedata initialize method
# set instance variable name to my name
# create greetings initialize method
# call new namedata instance
# create greetings hello method
# puts a hello on the screen

class NameData
  attr_accessor :name
  def initialize
    @name = "Marshall"
  end
end


class Greetings
  def initialize
    @namedata = NameData.new
  end
  def hello
    puts "Hello #{@namedata.name}! Great to see you."
  end
end

greet = Greetings.new
greet.hello

# Reflection
# Release 1
# What are these methods doing?
# The what_is methods are just returning the current instance variables of the instance of the class. The change_my methods are changing those instance variables to new values.
# The new method creates a new instance of the Profile class with built-in values for instance variables - so all instances
# will begin as 27 year old Kim-named cartographers.

# How are they modifying or returning the value of instance variables?
# The what_is methods just return instance variables because @age is evaluated as the last expression in the what_is_age method, for example.
# The change_my methods take in a parameter and set the instance variable to the new parameter, which overwrites its original value.

# Release 2
# What changed between the last release and this release?
# The what_is_age method was replaced by attr_reader :age, which creates a read-only age method that will return the instance's age. This means that instance.age will return the age instance variable instead of instance.what_is_age
# What was replaced?
# The what_is_age method was replaced by attr_reader :age, which creates a read-only age method that will return the instance's age.
# Is this code simpler than the last?
# Attributes help clean up a lot of code relating to how class instances set and get their instance variables. Yes.

# Release 3
# What changed between the last release and this release?
# The change_my_age method has also been replaced by the attr_writer :age code, which creates a method for defining an instance variable age for an instance of class Profile. This also means that the age can be set by instance.age = instead of instance.change_my_age =.
# What was replaced?
# The change_my_age method has also been replaced by the attr_writer :age code, which creates a method for defining an instance variable age for an instance of class Profile.
# Is this code simpler than the last?
# Yes... every time we replace a 3 line method with an attribute we are making the class easier to both read and write.

# Reflection:
# What is a reader method?
# A reader method is a method that provides information about the instance, usually returning an instance variable.
# What is a writer method?
# A writer method is a way to set information about an instance, often setting an instance variable.
# What do the attr methods do for you?
#   Attr methods replace 3 line reader and writer methods into one shorter line of code. attr_reader replaces reader methods, attr_writer replaces writer methods, and attr_accessor replaces both.
# Should you always use an accessor to cover your bases? Why or why not?
# You will not always want both read and write properties - often times you will not want write properties so that the instance variables cannot be changed so easily.
# What is confusing to you about these methods?
# Nothing.
