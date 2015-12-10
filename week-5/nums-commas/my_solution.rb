# Numbers to Commas Solo Challenge

# I spent 1.75 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? (i.e. What should the code return?) a comma-separated integer in a string
# What are the steps needed to solve the problem?
# If the integer is less than 1000 then return the integer as a string
# if the string is larger than 1000
#   modulus the integer by 1000 to get the digits to the right of the first comma
#   convert the remainder to a string
#
#   divide the original integer by 1000 to get the digits to left of the first comma
#   if the number after division is less than 1000, convert that to a string
#   if the integer of digits to the left of the commas is greater than 1000, modulus by 1000 and divide by 1000 again
# create a new string and add the mini-strings together with commas in between

# 1. Initial Solution
def separate_comma(number)
  if number < 1000
    return number.to_s
  else
    answer = ''
    while number >= 1000
      3.times do
        answer += (number % 10).to_s
        number = number / 10
      end
      answer += ","
    end
    answer += number.to_s.reverse
    return answer.reverse!
  end
end


# puts separate_comma(100)
# puts separate_comma(100402847847583749803857037400)
# puts separate_comma(18000002)


# 2. Refactored Solution
def separate_comma(number)
  digits = number.to_s.split('').reverse!
  array = []
  digits.each_slice(3) {|slice| array << slice }
  array.each {|elem| elem << ","}
  return array.flatten.join.reverse[1..-1]
end


# puts separate_comma(100)
#  puts separate_comma(100402847847583749803857037400)
#  puts separate_comma(18000002)




# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I was mainly trying to figure out how to access three digits at a time from the end of the number. So i originally tried
# modulus-ing by 1000 to get the remainder and dividing by 1000 to slice the remainder off, and looping through that process while
#  the quotient was greater than 1000. However, even though the test passed for most random numbers, it failed with leading
#  zeroes, because the remainder of 1002 % 1000 is 2 and not 002. So I had to go back and modulus and divide by 10 instead of 1000
#  to grab each digit one at a time.
# Was your pseudocode effective in helping you build a successful initial solution?
# Yes, the pseudocode helped me go through each line in my actual code. It also gave me time to think through the logic
# before beginning the code.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I used split, slice, <<, join, flatten, and reverse, so by number of methods it was more complicated than my initial solution.
# I found it much more difficult to convert my method into built-in methods than it was to just write it out with my initial solution.
#  And actually, I think my refactored solution might be slower than my original solution based on the type conversions
#  and methods. I tried using the time = Benchmark.measure way of measuring my two methods, and my initial is a little faster
# when running it one at a time..(havent figured out how to run it 10000 times yet)
# How did you initially iterate through the data structure?
# Initially i iterated through the number by dividing the number by 1000 and modulus-ing it by 1000 to separate the digits before
# and after commas. However, even though my method passed the tests, which chose random numbers, my method FAILED when dealing
# with zeroes, because taking the remainder of 1002 % 1000 gives 2, not 002. So I had to go back and make sure the digits kept
# leading zeroes by modulus-ing and dividing by 10 to grab one digit at a time. I also had to make sure I reversed the first
# digits of the answer and reversed the entire string at the end (because I kept putting the last digit next in the string)
# Do you feel your refactored solution is more readable than your initial solution? Why?
# I feel like my initial solution is more readable because it uses less methods. Using each_slice and each and having
# multiple code blocks and then a bunch of chained methods in my refactore solution seems to create a harder method to read.
#   HOWEVER, right now all of my pseudocode is above all my actual code. I imagine that my code could possibly be made more
# readable if I added my pseudocode as comments through my code.