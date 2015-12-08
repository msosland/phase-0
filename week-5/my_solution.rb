# Pad an Array

# I worked on this challenge Alana Hanson

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.
# 0. Pseudocode

# What is the input?
# An array, any non-negative integer, and default value

# What is the output? (i.e. What should the code return?)
# A different array that is either the original array or the original array plus the default value repeated until the array meets the minimum length

# What are the steps needed to solve the problem?
# for pad, create new empty array equal to copy of array
#for pad!, do not create new array
# If min_size is greater than array length, push extra values equal to default value until length equals min_size to array copy for pad and to original array for pad!
# return array_copy (pad) or array (pad!)

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  while min_size > array.length
    array.push(value)
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each { |element| new_array.push(element) }
  while min_size > new_array.length
    new_array.push(value)
  end
  return new_array
end

# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.collect{|x| x }
  while min_size > new_array.length
    new_array.push(value)
  end
  return new_array
end

# this method will modify the original array
def pad!(array, min_size, value = nil) #destructive
  while min_size > array.length
    array.push(value)
  end
  return array
end


# 4. Reflection
=begin
On your own, create a commented section in your "my_solution.rb" file and write a (or create a video) reflection that answers the following questions:

Were you successful in breaking the problem down into small steps?
Yes, we were. We found the steps to be pretty straightforward.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Writing code from the pseudocode was very easy. We did alter our techniques though because my pair suggested that a while statement could do the work better than an if statement. So we ended up changing our code to more of a constant evaluation of array length rather than an if/else evaluation that we specified in the pseudocode.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
No, our initial pad solution was not successful. We were setting new_array = array, and apparently we were modifying the original array that way. I guess they were both pointing to the same object, and modifying the new array was modifying what the original array was pointing to. It took us a few minutes to figure that out, and we played around with different techniques to discover that we needed to copy the original array to a new object.
When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes, Alana combined our initialization of a new_array and copy into one line and we used the collect method to collect {|x| x} from the original array.
How readable is your solution? Did you and your pair choose descriptive variable names?
The only variable we created was new_array which is pretty straightforward.
What is the difference between destructive and non-destructive methods in your own words?
Destructive methods modify the original object that the method is called on. Non-destructive methods do not alter the original object, but instead they spit out a new object that is a modified version of the original.

=end
