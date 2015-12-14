# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent .5 hours on this challenge.

# Pseudocode

# Input: to create a new die, an array of strings will be required. to call the sides method, a die will be required as input. to call the roll method, a die will be required as input.
# Output: initializing a die creates a new die as output. calling the sides method on a die returns the number of sides as output. calling the roll method on a die returns a random side as output.
# Steps:
# within initialize, raise an argument error if array is empty array. then set an instance variable to what the sides are.
# in sides method, return the length of the array of labels.
# in roll method, return a random index from the array of labels.


# Initial Solution

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



# Refactored Solution
#i cannot think of any changes to make.
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




# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The logic is almost identical. Had to add the length method to get the number of sides and the length method to call an index number
# of the array. There is no method that spits back all the labels of the
# sides, whereas in the last die class knowing the number of sides implied what the labels were (1..@sides)
# What does this exercise teach you about making code that is easily changeable or modifiable?
# Some basic classes can be created similarly, for example initialize methods will as far as I know be very similar when
# it comes to creating instance variables. When code is easily modifiable, it can be copied and pasted and small edits can be made rather than built from scratch.
# What new methods did you learn when working on this challenge, if any?
# I used .size instead of .length first, but it did not pass... so I will go back and look at why. Otherwise I did not learn any new methods.
# What concepts about classes were you able to solidify in this challenge?
# I think I have a pretty good grasp of how to create a simple class, and what it means to create a class, and how to create certain parameter
# checks to raise errors, etc. I understand the creation of instance variables pretty well and what the return values should be of basic class methods.