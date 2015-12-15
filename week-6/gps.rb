# Your Names
# 1) Marshall Sosland
# 2) Timur Catakli

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)

  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #calculating how many whole items we can make
  #calculates how many left over items there are
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  num_items = num_of_ingredients / serving_size

  output = "Calculations complete: Make #{num_items} of #{item_to_make}"

  while remaining_ingredients > 0

    #find the largest thing we can make's size
    best_avail = library.select {|k, v| remaining_ingredients >= library[k]}.values.max
    # see how many we can make of them
    num_leftovers = remaining_ingredients / best_avail
    #see what the item is
    extra_item = library.select {|k, v| library[k] == best_avail}.keys[0]
    #add item to output
    output += " and #{num_leftovers} of #{extra_item}"
    #decrement remaining ingredients
    remaining_ingredients -= num_leftovers*best_avail
  end
  output

end

# p serving_size_calc("banana", 7)
p serving_size_calc("pie", 11)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)




#  Reflection
# What did you learn about making code readable by working on this challenge?
# I learned that is was very important.. the whole error checking section in the original code was very confusing.
# Even though I knew what it was checking, it was hard to even explain how it was checking it.
# Did you learn any new methods? What did you learn about them?
# Not really.
# What did you learn about accessing data in hashes?
# I learned that if only one parameter is given for iterating through a hash, I should recognize that its a key-value pair in array form. So library[food] in the original code comes out to ["cookie", 1]in the first iteration, for example. Also in our bonus feature I practiced accessing hash values and keys with .values.max or .keys[0]
# What concepts were solidified when working through this challenge?
# Using the unless statement to raise an argument error, creating variables to assign to the answers of math problems, iterating through a hash by the quantity of the values, and cleaning up repetitive code
