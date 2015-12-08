=begin
What did you learn about pseudocode from working on this challenge?
Pseudocode is definitely helpful not only as a resource to look back on when writing the code but also because it gets me thinking about what code I will actually use - essentially, it forces me to think before coding and before my code gets messy.
Although my pair and I were very confused by the input given for the add_item method in the assignment. Since the input was already filled in as "item name and optional quantity", we thought we were not supposed to input a grocery list, which caused all sorts of complications when we were trying to access the list we had created.
What are the tradeoffs of using Arrays and Hashes for this challenge?
Hashes were the clear choice because we want to assign quantities to each item. The keys needed values that could be changed, and the order was unimportant.
What does a method return?
A method returns an object or value or boolean or nil. It always returns something.
What kind of things can you pass into methods as arguments?
You can pass objects or values into a method as arguments.
How can you pass information between methods?
Well you can assign a variable to the value of another method's output, and then you can pass that variable into a different methods input as a parameter. Alternatively, you can use instance or global variables to have access to information across methods, though it may be frowned upon.
What concepts were solidified in this challenge, and what concepts are still confusing?
I actually learned about instance variables even though we were told not to use them. Ultimately, the challenge was pretty straightforward, but my pair and i thought we were not allowed to pass in a hash as a parameter in add_item, which made it difficult to access the hash we created. With access (with the hash as a parameter), we moved very quickly through the rest of the methods. I did learn about the delete method for a hash key/value pair which I had not used.
=end
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# create a new hash
# split input string by spaces into individual items
#
# set default quantity to be 1
# iterate through individual items, add each to hash as a key with a value of default
  # print the list to the console [can you use one of your other methods here?]
# output: the new hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: create a new key in the list with the item
# either set the quantity to default or optional parameter
# output: the updated hash

# Method to remove an item from the list
# input: item name
# steps: remove item from hash
# output: the updated hash

# Method to update the quantity of an item
# input: item name and new quantity
# steps: update value that corresponds to items key
# output: the updated hash

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through hash and print key/value pairs
# output: the pretty-printed hash


def create_list(groceries)
  default_qty = 1
  grocery_list = {}
  groceries.split(" ").each {|grocery| grocery_list[grocery] = default_qty}
  #pretty_print(grocery_list)
  grocery_list
end
current_list = create_list("apple bananas carrot")

def add_item(grocery_list, grocery, qty = 1)
  grocery_list[grocery] = qty
  p grocery_list
end

add_item(current_list, "orange", 4)

def remove_item(grocery_list, grocery)
  grocery_list.delete(grocery)
  p grocery_list
end

remove_item(current_list, "bananas")

def update_qty(grocery_list, grocery, new_qty)
  grocery_list[grocery] = new_qty
  p grocery_list
end

update_qty(current_list, "orange", 15)

def pretty_print(grocery_list)
  grocery_list.each {|key, value| puts "#{key}: #{value}"}
end

pretty_print(current_list)


