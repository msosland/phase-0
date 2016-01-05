# I worked on this challenge by myself
# This challenge took me
  # is_fibonacci? 15 minutes
  # super_fizzbuzz 15 minutes

# # Pseudocode for is_fibonacci?
# SET array equal to the first 3 numbers of the fibonacci sequence.
# WHILE the last element in the array is less than the num argument
#   PUSH a new element to the array that is the sum of the last element and second to last element
# END WHILE
# If the second to last element plus the third to last element are equal to the num argument
#   RETURN true

# Initial Solution for is_fibonacci?

def is_fibonacci?(num)
  array = [0, 1, 1]
  while array[-1] < num
    array.push(array[-1] + array[-2])
  end
  return ((array[-2] + array[-3]) == num)
end

# puts is_fibonacci?(43857238475873957283745872384758347)

# Refactored Solution
# Nothing to refactor

# Reflection
# I was already a little familiar with fibonacci sequences beforehand, but I had only worked with a recursive code that would print the first X fibonacci numbers. This was a fun twist to test that if a number is a fibonacci, the two fib numbers smaller than it must equal it.

# Pseudocode for super_fizzbuzz
# ITERATE through array
# for EACH index in array
#   IF index value divisible by 15
#     SET index value to fizzbuzz
#   IF index value divisible by 5
#     SET index value to buzz
#   IF index value divisible by 3
#     SET index value to fizz
# END loop
# RETURN array

# Initial Solution

def super_fizzbuzz(array)
  array.each_index do |x|
    if array[x] % 15 == 0
      array[x] = 'FizzBuzz'
    elsif array[x] % 5 == 0
      array[x] = 'Buzz'
    elsif array[x] % 3 == 0
      array[x] = 'Fizz'
    end
  end
  array
end

# print super_fizzbuzz([30, 9, 20, 1])

# Refactored Solution
#Nothing to refactor

# Reflection
# I chose to use each_index so that I could change the indices, instead of changing the numbers.