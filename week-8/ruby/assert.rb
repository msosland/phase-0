# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# name is set to "bettysue"
# assert is called on the block { name == "bettysue"}
# since the block evaluates to true, the assert method does not raise anything.
# assert is called on the block { name == "billybob"}
# since the block evaluates to false, the assert method raises a message


# 3. Copy your selected challenge here
class Die
  def initialize(labels)
    unless labels != []
      raise ArgumentError.new("Your die needs labeled sides!")
    end
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(@labels.length)]
  end
end




# 4. Convert your driver test code from that challenge into Assert Statements
# there was an rspec file die_spec.rb for the Die class. I am going to convert it to assert methods.

die1 = Die.new(['A', 2, 3, 'D', 'F', 'G'])

#first I am going to check that the number of arguments is valid for each method. I am using the .arity method from Ruby Docs methods.
def assert_correct_number_args(die, meth, expected, message)
  puts message
  die.method(meth.to_sym).arity == expected
end

p assert_correct_number_args(die1, 'sides', 0, "sides method takes no arguments")
p assert_correct_number_args(die1, 'initialize', 1, "initialize method takes 1 argument")
p assert_correct_number_args(die1, 'roll', 0, "roll method takes no arguments")

#Next i am going to check that an empty list of sides will throw an argument error
# require 'test/unit/assertions'
# include Test::Unit::Assertions
def assert_not_empty_param(message)
  puts message
  begin
    x = Die.new([])
  rescue ArgumentError
    true
  else
    false
  end
end

p assert_not_empty_param("new die object requires non empty list")

#next i am going to check that sides and roll return the correct output


# 5. Reflection
# This was extremely difficult... I actually picked a simple Class building assignment because I did not think there would be
#  that many weird asserts. It took me a long time to figure out how to check to see if an ArgumentError is raised.
#   I was trying to use assert_raise but I was not using it correctly. I am also unsure about my code
#   for checking the correct number of parameters because I feel like I am basically having to pass
#     in all the information. But in any case, the video seemed a lot simpler because everything
#       was checking a true/false thing... gah.