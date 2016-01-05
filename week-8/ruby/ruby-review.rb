# I worked on this challenge by myself

# This challenge took me
  # is_fibonacci? 15 minutes
  # super_fizzbuzz 15 minutes
  # numbers to english 15 minutes
  # reverse_words 30 minutes

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

# Initial Solution for super fizzbuzz

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

# Reflection for super fizzbuzz
# I chose to use each_index so that I could change the indices, instead of changing the numbers.

# Pseudocode for numbers to english words
# CREATE tens array with values null, ten, twenty, thirty, etc.. ninety
#CREATE ones array with values null, one, two, three, etc.. nine
# #IF num < 10
#   RETURN index  from second array
# #IF num >= 10
#   convert num to string
#   split string into 2 digits
#   turn two strings back to integers
#   RETURN index from tens array and index from ones array




# Initial Solution for nums to words
def in_words(num)
  tens = ['zero', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  ones = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  if num < 10
    return ones[num]
  else
    num_arr = num.to_s.split(//)
    if num_arr[1] != "0"
      return tens[num_arr[0].to_i] + " " + ones[num_arr[1].to_i]
    else
      return tens[num_arr[0].to_i]
    end
  end
end

# p in_words(4)
# p in_words(27)
# p in_words(92)
# p in_words(80)



# Refactored Solution
#Apparently there is a gem for this!

# Reflection for nums to words
# For up to 1000, you could pull the ones array index, add "hundred" then the tens index, then the ones index again. Would need checks to see if the tens or ones digit is 0.
#I added 'zero' at the front of each array so that the 1 index would correspond to the 1 number.

# Reverse Words

# Pseudocode for reverse words
# input a string

# SPLIT the string into words separated by spaces and punctuation
# SAVE the words into an array
# ITERATE through array reversing each string
# JOIN the elements with spaces



# Initial Solution for reverse words
def reverse_words(string)
  array = string.split(" ")
  array.map! do |elem|
    if elem[-1] == "." || elem[-1] == "," || elem[-1] =="?" || elem[-1] == "!"
      elem = elem[0..-2].reverse + elem[-1]
    else
      elem = elem.reverse
    end
  end
  array.join(" ")
end


# Refactored Solution
#Use regular expressions to deal with all punctuation
def reverse_words(string)
  array = string.split(" ")
  array.map! do |elem|
    if /[^A-Za-z0-9]/.match(elem[-1])
      elem = elem[0..-2].reverse + elem[-1]
    else
      elem = elem.reverse
    end
  end
  array.join(" ")
end


# Reflection for reverse words
# I added all the elem[-1] checks initially to try and keep the punctuation in place at the end of reversed words. I used regexp in the refactored version to check the last char of each word.

