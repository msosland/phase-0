# Concatenate Two Arrays

# I worked on this challenge by myself


# Your Solution Below

def array_concat(array_1, array_2)
  array_3 = []
  for val in array_1
    array_3.push(val)
  end
  for val in array_2
    array_3.push(val)
  end
  return array_3
end

#Refactored
def array_concat(array_1, array_2)
  return array_1.push(array_2).flatten
end
