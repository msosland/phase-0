# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode
#create global and local cohort classes

#global
# #attribute reader for name, start_date, immersive_date, graduation_date
# #currently_in_phase method
# input week_number
# IF week_number is between 0 and 9
# return phase 0
# IF week_number is between 10 and 13
# return phase 1
# IF week_number is between 13 and 17
# return phase 2
# if week_number is greater than 17
# return graduated

#   graduated? method
#   return currently_in_phase(week_number) == graduated

# #local
# # attribute_reader for city, email_list
# # accessor students
# # initialize method
#   takes variable number of names
#   adds each name to students array
#   adds email for each name to email list array
# #add method
# adds student to cohort students array
#     adds email from email list
# #remove method
# removes student from cohort students array
#     removes email from email list

require 'date'

# Initial Solution

class GlobalCohort
  attr_reader :name, :start_date, :immersive_date, :graduation_date
  def initialize(name, start_date)
    @name = name
    @start_date = Date.parse(start_date)
    @immersive_date = @start_date + 63
    @graduation_date = @start_date + 126
  end

  def currently_in_phase()
    date = Date.today
    if date < @start_date
      puts "This group has not started phase 0 yet"
    elsif date >= @start_date && date < @immersive_date
      return 0
    elsif date >= @immersive_date && date < (@immersive_date + 21)
      return 1
    elsif date >= (@immersive_date + 21) && date < (@immersive_date + 42)
      return 2
    elsif date >= (@immersive_date + 42) && date < @graduation
      return 3
    else
      puts "This group has graduated!"
    end
  end

  def graduated?()
    date = Date.today
    return date > @graduation
  end

end

class LocalCohort < GlobalCohort
  attr_reader :city
  attr_accessor :email_list
  attr_accessor :students
  def initialize(city)
    @city = city
    @email_list = {}
    @students = []
  end

  def add_student(student, email)
    @students.push(student)
    @email_list[student] = email
  end

  def remove_student(student)
    @students.delete(student)
    @email_list.delete(student)
  end

  def num_of_students
    @students.length
  end

end

sq = GlobalCohort.new("Squirrels", '09-12-2015')
chi = LocalCohort.new("Chicago")
puts sq.start_date
puts sq.immersive_date
puts sq.graduation_date
puts sq.currently_in_phase



# chi.add_student("Meagan", "meagan@mail.com")
# chi.add_student("Dave", "dave@mail.com")
# chi.add_student("Joe", "joe@mail.com")
# puts chi.students
# puts chi.email_list

# chi.remove_student("Joe")
# puts chi.students
# puts chi.email_list
# puts chi.num_of_students

# date = Date.today
# date2 = date + 120
# puts date - date2

# puts squirells.immersive_date




# Refactored Solution





# Reflection