# Build a simple guessing game


# I worked on this challenge by myself
# I spent 1 hours on this challenge.

# Pseudocode

# Input: the creation of a new game requires an answer as input. The guess method requires a guess as input
# Output: the creation/initialization will create an @answer instance variable and an @lastguess instance variable. the guess method will output one of three symbols, high low or correct, and will also reseet the lastguess instance variable to the guess.
# Steps:
# for initialize, create instanve variable for answer and set it to answer. create instance variable for lastguess and set it to nil as a placeholder since no guesses have been made
#   for guess reassign lastguess instance variable to the guess. then return low if the answer is higher, high if the answer is lower, and correct otherwise
#     for solved, just return true if the lastguess instance variable is equal to the answer instance variable


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @lastguess = nil
  end

  def guess(integer)
    @lastguess = integer
    if @answer > integer
      :low
    elsif @answer < integer
      :high
    else
      :correct
    end
  end

  def solved?
    @lastguess == @answer
  end

end




# Refactored Solution

#I cant really think of any ways to refactor this.
#I actually decided to not implement a one line ternary operation for the guess method because some writers think it is only good to use when there are only two cases (if and else) and get harder to read once there are elsifs.
class GuessingGame
  def initialize(answer)
    @answer = answer
    @lastguess = nil
  end

  def guess(integer)
    @lastguess = integer
    if @answer > integer
      :low
    elsif @answer < integer
      :high
    else
      :correct
    end
  end

  def solved?
    @lastguess == @answer
  end

end





# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#   There can be only one value for an instance variable of an object, just like there can be only one age for a person.
#   Many real-world objects have unique values and behaviors where there can only be one per object.

# When should you use instance variables? What do they do for you?
#   When each instance object of a class is going to have a variable associated with it, instance variables can be used
#   (for example age for every person object). They allow access across methods when calling behaviors on a given instance.
#   They may also allow you to sort objects  within a class versus each other.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is just creating pathways that logic can take through a program, keeping in mind different user input and also
# input/output from the program running. In this game, flow control allowed the guess method to return different answers based on
# the input guess. I did not have any trouble using it in this game. I also chose to keep the if, elsif, and else statements
# on separate lines for readability.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#   Symbols are immutable, they are easy to read, and in this game there isnt really anything the user needs to do with the output
#     - they are not going to transform the output in any way or use it later. The output is only providing information.