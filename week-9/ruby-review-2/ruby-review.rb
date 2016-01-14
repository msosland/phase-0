# OO Basics: Student


# I worked on this challenge by myself
# This challenge took me 1.25 hours.


# Pseudocode
# for the average method
#   sum each element of array
#   divide by array length
# for the letter grade methods
#   IF grade is >= 90 then return A
#   IF grade is between 80 and 90 then return B
#   IF grade is between 70 and 80 then return C
#   IF grade is between 60 and 70 then return D
#   ELSE return F
# for linear search method
#   iterate through each element in students
#   IF element = what were looking for, RETURN index of element
#   IF no element matches, return -1
# for binary search method
#   IF the min of search range is > max of search range
#     element not found RETURN -1
#   ELSE
#     set low to min of search range
#     set high to max of search range
#     set mid to average lo/high
#     if element at mid > what were looking for
#       run method from min to 1 less than mid
#     if element at mid < what were looking for
#       run method from mid + 1 to max
#     else return mid


# Initial Solution

class Student
  attr_accessor :scores, :first_name
  def initialize(scores, first_name)   #Use named arguments!
    @scores = scores
    @first_name = first_name
  end
  def average
    sum = 0.0
    @scores.each {|x| sum += x}
    @average = sum / @scores.length
  end
  def letter_grade
    case @average
    when 90..100 then @letter_grade = 'A'
    when 80...90 then @letter_grade = 'B'
    when 70...80 then @letter_grade = 'C'
    when 60...70 then @letter_grade = 'D'
    else
      @letter_grade = 'F'
    end
    @letter_grade
  end

end

def linear_search(students, student)
  students.each do |x|
    if x.first_name == student
      return students.index(x)
    end
  end
  if !(students.include?(student))
    return -1
  end
end

def binary_search(students, student, min, max)
  if max < min
    return -1
  end
  low = min
  high = max
  mid = (low + high) / 2
  if students[mid].first_name > student
    binary_search(students, student, low, mid-1)
  elsif students[mid].first_name < student
    binary_search(students, student, mid+1, high)
  else
    return mid
  end
end

alex = Student.new([100, 100, 100, 0, 100], "Alex")
ben = Student.new([90, 80, 70, 60, 60], "Ben")
cathy = Student.new([100, 90, 90, 90, 100], "Cathy")
david = Student.new([80, 100, 100, 70, 80], "David")
eve = Student.new([100, 80, 90, 80, 90], "Eve")

students = [alex, ben, cathy, david, eve]


# Refactored Solution

# within the average method above:
# def average
#     @scores.reduce(:+) / @scores.length.to_f
# end

# There is also a built in binary search in Ruby
# The below returns 0 for Alex's index.
p students.index( students.bsearch{|x| "Alex" <=> x.first_name})


# DRIVER TESTS GO BELOW THIS LINE

# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "Cathy") == 2
p linear_search(students, "NOT A STUDENT") == -1
p binary_search(students, "Alex", 0, 4) == 0
p binary_search(students, "Cathy", 0, 4) == 2
p binary_search(students, "Eve", 0, 4) == 4
p binary_search(students, "Frank", 0, 4) == -1




# Reflection
# What concepts did you review in this challenge?
# Creating instance methods, running test code, and using a case when then end conditional example.
#   I also reviewed linear and binary search, which I had been introduced to a very long time ago. Also discovered there is a built in binary search method in Ruby, which I used in the refactored section.
#   The code for each search works, though its almost easier to write a binary search method when the original array is longer.
# What is still confusing to you about Ruby?
# Nothing specifically from this challenge.

# What are you going to study to get more prepared for Phase 1?
# Trying to go through as much of the Rubyist again as possible, and doing all of the Bonus ruby challenges.
# Also going to look at the Principles of Object Oriented Design book... but there will not be much time.