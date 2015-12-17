# Class Warfare, Validate a Credit Card Number


# I worked on this challenge Katie Meyer.
# I spent 1.75 hours on this challenge.

# Pseudocode

# Input: credit number (no spaces)
# Output: true or false
# Steps:
# CREATE class for credit card that takes only 16 digits
# INITIALIZE ()
#  - raise argument error if number is not 16 digits
#  - if number has 16 digits, create instance variable
# CREATE method "check card"
#  - access every other digit (even)
#  - double the value of even digits
#  - break each number into single digits
#  - sum all numbers
#  - if the sum divided by 10 returns 0
#    - return true/false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    unless number.to_s.length == 16
      raise ArgumentError.new ("Number needs to have 16 digits")
    end
    @number = number
  end

  def check_card
    string = @number.to_s
    new_array = []
    string.each_char { |x| new_array << x.to_i }
    new_array.each_index do |y|
      if y.even?
        new_array[y] = new_array[y] * 2
      end
    end
    new_string = new_array.join
    counter = 0
    new_string.each_char { |z| counter += z.to_i }
    if counter % 10 == 0
      true
    else
      false
    end
  end

end

# Refactored Solution
class CreditCard
  def initialize(number)
    unless number.to_s.length == 16
      raise ArgumentError.new ("Number needs to have 16 digits")
    end
    @number = number
  end

  def check_card
    array = @number.to_s.split(//)
    array.each_index do |y|
      if y.even?
        array[y] = array[y].to_i * 2
      end
    end
    new_string = array.join
    counter = 0
    new_string.each_char { |z| counter += z.to_i }
    counter % 10 == 0
  end
end

# Reflection

# What was the most difficult part of this challenge for you and your pair?
# We wanted to iterate through a string's indices instead of converting all of our numbers to an array. We used string.each_char
# and doubled the values when the index was even, however if string.index(9) was even for the first appearance of nine, the method
# doubled all of the 9s, even the ones that were on an odd index. So we ended up converting our string to an array, doubling the even
# indexes, then joining back into a string.

# What new methods did you find to help you when you refactored?
# We used .to_s.split(//) to convert our original 16 digit number into an array of length 16. And we still used the each_index
# and each_char methods to iterate through our structures.

# What concepts or learnings were you able to solidify in this challenge?
# Which data structures we can iterate through and by what methods, a lot of type conversions including the explicit ones like .to_i and
# .to_s but also the type conversions that take place using a .join method, for example, which converting our array into a string.
# and also refactoring a 5-line if/else statement into one line to be evaluated.