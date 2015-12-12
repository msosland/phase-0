#  5.6 Accountability Groups Challenge

# Release 1 Pseudocode
# 1. create a list to represent people in our cohort
# 2. randomly select 4 or 5 elements to remove and place in new array
# 3. add new array to larger container array
# 4. if there are 1 2 or 3 elements left over, add them to arrays that have 4 elements only
# 5. add all new arrays to larger container array
# 6. for every small array in container array, add it as a value to a hash key with the acct group name and number

#Initial Solution

def create_groups(list)
  list_copy = []
  list.each {|item| list_copy.push(item)}
  all_groups = []
  list_copy.shuffle!
  while list_copy.size >= 4
    group = list_copy.pop(4)
    all_groups << group
  end
  if list_copy.size > 0
    list_copy.each_with_index do |person, index|
      person = list_copy.pop
      all_groups[index].push(person)
    end
  end
  hash = {}
  all_groups.each_with_index do |group, index|
    hash["Accountability Group #{index}"] = group
  end
  p hash
end


#REFACTORED SOLUTION!!!!
def create_groups_refactored(list)
  list_copy = []
  list.each {|item| list_copy.push(item)}
  list_copy.shuffle!
  list_copy.group_by {|i| list_copy.index(i) % (list_copy.size/4) }
end


#driver code
#create a list of numbers instead of typing out people.......
list = (1..65).to_a
#can run multiple times and get diff groups
p create_groups_refactored(list)
puts
create_groups(list)
# create_groups(list)
# #can save values
# new_set = create_groups(list)
# p new_set
# p new_set

#Optional Considerations
#Running this code multiple times will provide multiple outputs because of the shuffle! method. If you want the same groups every time, take that out.

#You can store past outputs by assigning the method call to a variable, as in   one_output = create_groups(list)

#There is not a quick solution for if someone leaves the cohort. First, the groups should be saved as described above.
#Most groups have 4 people so if one person left nothing would need to happen immediately.
#If two people from the same group leave, that key/value pair would need to be removed from the hash and the remaining 2 people would need
#to be placed in two other groups. Which should have minimal impact since almost all groups have only 4 people.

# What was the most interesting and most difficult part of this challenge?
# In my initial solution, I ended up just popping 4 people every time.. instead of randomly popping 4 or 5. Also, I originally wanted to randomly remove people from
# the middle of the original list, but I think its easier to just shuffle and then pop from the end (I could not figure out how to randomly
#   remove people from the middle)
#The group_by method makes the refactored solution very very short. Each key is an accountability group number, pointing to an array of 4 or 5 elements.


# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yes, I think it definitely helps to have good pseudocode, however I often stray from my pseudocode when I realize i need to do something different
#   or realize that one of my steps wasnt simple enough and its actually made up of substeps

# Was your approach for automating this task a good solution? What could have made it even better?
# I think my initial solution is good but it does have multiple iterating loops.
#The only improvement I can think of would maybe be to immediately load the groups into the hash instead of loading them into a bigger
# array first and then loading them all into the hash together. I wanted to put them all in a big array first so that I could have the index numbers
# completed so that they could be involved in the group name.
#Once I found the group_by method in the ruby docs, the refactored solution is much cleaner looking. The only difference is as it is,
# the hash keys are "0", "1," etc instead of "Accountability Group 0", "Accountability Group 1" but that could be fixed easily.

# What data structure did you decide to store the accountability groups in and why?
# I originally put all of the groups into an array, but then I moved them to a hash so that I could create keys with their accountability group name.
#In my refactored solution the group_by method spits out a hash automatically.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# The only method I used in my initial solution that I had not used before was shuffle! So the rest are pretty basic (each, push, and pop).

#In my refactored solution, the shuffle and group_by method basically did everything for me.
