# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution - Marshall!

# Problem 1 for arrays:
# the original solution to array_finding
#used grep from rubyist page 294
def my_array_finding_method(source, thing_to_find)
  var = thing_to_find
  source.grep(/#{var}/)
end

#an alternate solution to array_finding
#using select and the =~ matching operator
# def my_array_finding_method(source, thing_to_find)
#   var = thing_to_find
#   source.select {|elem| elem =~ /#{var}/}
# end

#the following incorrect solution only works if all the elements of the source are strings, because the include? method does not work with nums:

# def my_array_finding_method(source, thing_to_find)
#   array2 = source.select {|word| word.include?(thing_to_find)}
# end

# Problem 1 for hashes
# my initial long solution :-(  :-(
def my_hash_finding_method(source, thing_to_find)
  array = []
  source.select do |key, value|
    if source[key] == thing_to_find
      array << key
    end
  end
  array
end

#my refactored solution
def my_hash_finding_method(source, thing_to_find)
  source.select {|key, value| source[key] == thing_to_find }.keys
end

# Identify and describe the Ruby method(s) you implemented.
# I used grep for the array solution. It was used in an example in the Rubyist (page 294) for pattern matching. However, I had a hard time understanding all of grep's abilities when I read about it so I wanted to find other ways to solve the problem. My second array solution (commented out) selected elements that contained the thing_to_find based on the =~ operator for pattern matching. And the third way (commented out) used the include? method, which failed because some of the array elements are numbers.
#In the hashes solution, I originally could not get select to work because it would always return key value pairs, not just keys. So i wrote out a long solution where I pushed keys to an array... Then i refactored it correctly by using the select method, but adding the .keys method to the end to only select the keys!
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#