# Calculate the mode Pairing Challenge

# I worked on this challenge Sabri Helal

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of numbers or strings
# What is the output? (i.e. What should the code return?)
# an array containing the elements that occurred most frequently in the original array
# What are the steps needed to solve the problem?
# create an empty hash
# add each element to hash as key with some default value
# iterate through the array
# count each time that each key in hash occurs in array
# set value of hash[key] to the count
# return the keys with the highest values in the hash




# 1. Initial Solution
def mode(array)
  hash = Hash.new {|hash,key| hash[key] =0}
  array.each do |item|
    hash[item] = array.count(item)
  end
  array2 = []
  hash.each do |k, v|
    if v == hash.values.max
      array2 << k
    end
  end
  array2
end


# 3. Refactored Solution
def mode(array)
  hash = Hash.new
  array.each do |item|
    hash[item] = array.count(item)
  end
  var = hash.values.max
  hash.delete_if { |k, v| v != var}.keys
end

# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# Well, the assignment kind of hinted that a hash would be useful so we ended up going with that. It made sense
# because it enabled us to record both the original elements, as keys, and the frequency they occurred as values.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Actually this may have been slightly more challenging. We kind of knew what we wanted to do with a hash but did
#   not really know how we were going to do it.

# What issues/successes did you run into when translating your pseudocode to code?
# It took us a long time to figure how to select the elements we wanted. We tried for a while to use the max_by method
# but then we could not call keys-only after that because max_by spits out an array of both keys and values. We also tried
# selecting and could never really get it quite right.


# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used each to iterate through both the array and the hash. We found delete_if when we were refactoring which
# allowed us to avoid creating an empty array to push certain elements to. We used the count method to get the frequency.
# I had originally seen it while looking to refactor a previous exercise. Otherwise I think we would have set a counter
# variable to 0 and gone through and for each item incremented the counter variable every time the item had the same
#  value as another item in the array.
#  One issue in our refactor: when we put v != hash.values.max in the code block, it did not work.
#  We had to create the variable and set it to hash.values.max. I have no idea why.
