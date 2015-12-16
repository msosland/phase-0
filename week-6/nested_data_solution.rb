
# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x|
  if x.is_a?(Integer)
    x += 5
  elsif x.kind_of?(Array)
    x.map! {|y| y + 5}
  end
end

p number_array




# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |x|
  if x.is_a?(String)
    x += "ly"
  elsif x.kind_of?(Array)
    x.map! do |y|
      if y.is_a?(String)
        y += "ly"
      elsif y.kind_of?(Array)
        y.map! {|z| z += "ly"}
      end
    end
  end
end

p startup_names

# What are some general rules you can apply to nested arrays?
# You can kind of count the number of nested brackets to determine how many levels down you need to go to get to the bottom.
# So in the first golf hole, we needed to go 4 deep which was easy to count because of the 4 ]]]] at the end.
# If you do not need to keep the original structure, you can flatten an array using the flatten method.
# If you need to iterate down and down, I guess you will need an extra do-iterator-loop for each level down - we could not find a refactored solution for the bonus.

# What are some ways you can iterate over nested arrays?
# We used the map! function to iterate and change the array in place, and for each element we determined whether it was a number
# (in release 3)/string(in the bonus) or another array. Then if it was an array we mapped! through the items again if there were
# no deeper arrays (like in release 3) and when there were deeper arrays, we went through another if/elsif branching (in the
#   bonus) and only mapped when we reached another array.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# We basically used methods we already knew like map! and is_a? though we also used kind_of? from the example in release 0 to accomplish the same thing is_a? accomplishes.
# We could not find any method that would solve release 3 and the bonus without having to write out nested loops.