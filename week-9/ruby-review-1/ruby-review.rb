# Introduction to Inheritance

# I worked on this challenge Meagan Munch.
#I ended up thinking about this challenge for many hours..



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
    elsif date < @immersive_date
      return 0
    elsif date < (@immersive_date + 21)
      return 1
    elsif date < (@immersive_date + 42)
      return 2
    elsif date < @graduation_date
      return 3
    else
      puts "This group has graduated!"
    end
  end

  def graduated?()
    date = Date.today
    return date > @graduation_date
  end

end

class LocalCohort < GlobalCohort
  attr_reader :city
  attr_accessor :email_list, :students
  def initialize(name, start_date, city)
    super(name, start_date)
    @city = city
    @email_list = {}
    @students = []
  end

  def add_student(student)
    @students.push(student.name)
    @email_list[student.name] = student.email
  end

  def remove_student(student)
    @students.delete(student.name)
    @email_list.delete(student.name)
  end

  def num_of_students
    @students.length
  end
end

class Student
  attr_reader :name, :email, :city
  def initialize(name, email, city)
    @name = name
    @email = email
    @city = city
  end
end

puts "-------------------------"
puts "testing out initial solution"
puts "--------------------------"
#Driver code for global cohort
#create global, check dates, check phase number, check whether graduated
sq = GlobalCohort.new("Squirrels", '09-05-2015')
puts sq.start_date
puts sq.immersive_date
puts sq.graduation_date
puts sq.currently_in_phase
puts sq.graduated?
puts sq.name

#driver code for local cohort
#create local, create 3 students,
#add students, display students, remove students, check number of students
chi = LocalCohort.new("Squirrels", '09-05-2015',"Chicago")
meagan = Student.new("Meagan", "meagan@mail.com", "Chicago")
dave = Student.new("Dave", "dave@mail.com", "Chicago")
joe = Student.new("Joe", "joe@mail.com", "Chicago")
chi.add_student(meagan)
chi.add_student(dave)
chi.add_student(joe)
puts chi.students
puts chi.email_list
chi.remove_student(joe)
puts chi.students
puts chi.email_list
puts chi.num_of_students

#inherit dates from global squirrels cohort
puts chi.start_date
puts chi.immersive_date
puts chi.currently_in_phase
puts chi.graduated?




# Refactored Solution
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
    elsif date < @immersive_date
      return 0
    elsif date < (@immersive_date + 21)
      return 1
    elsif date < (@immersive_date + 42)
      return 2
    elsif date < @graduation_date
      return 3
    else
      puts "This group has graduated!"
    end
  end

  def graduated?()
    date = Date.today
    return date > @graduation_date
  end

end

class LocalCohort < GlobalCohort
  attr_reader :city
  attr_accessor :email_list, :students
  def initialize(name, start_date, city)
    super(name, start_date)
    @city = city
    @email_list = {}
    @students = []
  end

  def add_student(student)
    @students.push(student.name)
    @email_list[student.name] = student.email
  end

  def remove_student(student)
    @students.delete(student.name)
    @email_list.delete(student.name)
  end

  def num_of_students
    @students.length
  end
end

class Student
  attr_reader :name, :email, :city
  def initialize(name, email, city)
    @name = name
    @email = email
    @city = city
  end
end

puts "-------------------------"
puts "testing out refactored solution"
puts "--------------------------"
#Driver code for global cohort
#create global, check dates, check phase number, check whether graduated
sq = GlobalCohort.new("Squirrels", '09-05-2015')
puts sq.start_date
puts sq.immersive_date
puts sq.graduation_date
puts sq.currently_in_phase
puts sq.graduated?
puts sq.name

#driver code for local cohort
#create local, create 3 students,
#add students, display students, remove students, check number of students
chi = LocalCohort.new("Squirrels", '09-05-2015',"Chicago")
meagan = Student.new("Meagan", "meagan@mail.com", "Chicago")
dave = Student.new("Dave", "dave@mail.com", "Chicago")
joe = Student.new("Joe", "joe@mail.com", "Chicago")
chi.add_student(meagan)
chi.add_student(dave)
chi.add_student(joe)
puts chi.students
puts chi.email_list
chi.remove_student(joe)
puts chi.students
puts chi.email_list
puts chi.num_of_students

#inherit dates from global squirrels cohort
puts chi.start_date
puts chi.immersive_date
puts chi.currently_in_phase
puts chi.graduated?


# Reflection
=begin
What concepts did you review in this challenge?
I feel like this was one of the harder challenges I have done. I ended up pretty much having to cut off
for timeboxing. Some of the concepts I learned for the first time include using Dates and inheritance.
I used Date.parse to get a date from a string, and I used Date.today to get today's date. Then we added
days to get the dates of all our of phases. I used super to have the local cohort inherit instance
variables from the global cohort. So once I plugged in the start date for the local cohort, the local
 cohort would get the immersive date and graduation date from the global cohort, and all of the methods
  from global, like currently_in_phase and graduated? would work, since the dates were passed on.
  I also ended up separating students as a new class, and then using student.name and student.email to add the students into my container objects.
  I also reviewed a lot of driver test code.
What is still confusing to you about Ruby?
We spent a while trying to decide where everything should go. Ultimately, we created the students
inside the local cohort because it wouldn't make sense if a student was part of the global
cohort and not a local one. However, as it is set up, we did not put a list of all squirrels
students inside the global cohort squirrels. So to get lists of students, you have to work with
the local cohort. I think potentially the add and remove students could be put under global
cohort maybe with a city organization, and then the local cohorts could maybe pull the
students into @students if any exist with that city name.
What are you going to study to get more prepared for Phase 1?
I am running out of town but I will try to read more about classes and inheritance.
=end