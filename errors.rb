# Analyze the Errors

# I worked on this challenge myself.
# I spent 45 min on this challenge.

# --- error -------------------------------------------------------

# (buggy)"Screw you guys " + "I'm going home." = cartmans_phrase
# cartmans_phrase = "Screw you guys" + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
 #   puts "What's there to hate about #{thing}?"
 # end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 171, the end of the file, because the interpreter searches the whole file for the keyword end
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end.
# 5. Where is the error in the code?
# => the while loop and the method def each need an end keyword. the while loop should have an end keyword, even if it always evaluates to true or never does. the code is really missing an indented end keyword in between the puts statement and the end of the method.
# 6. Why did the interpreter give you this error?
# => Ruby requires an end keyword for all method definitions and while loops. The interpreter only found one end keyword which ended the while loop, and the method definition never ended.

# --- error -------------------------------------------------------

# south_park = 21

# 1. What is the line number where the error occurs?
#   37
# 2. What is the type of error message?
#   NameError
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method south_park
# 4. Where is the error in the code?
# => south_park is not assigned like a variable nor defined as a method, so the error is in line 37 and the interpreter cannot tell what south_park is
# 5. Why did the interpreter give you this error?
# => Ruby knows that south_park is not a keyword, but it cannot tell if it is a variable or a method because it has been assigned or defined as such

# --- error -------------------------------------------------------

# def cartman()
# end

# 1. What is the line number where the error occurs?
# 52
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => underfined method 'cartman'
# 4. Where is the error in the code?
# => cartman is understood to be a method because it has parentheses after it, where parameters could go, but there has been no method definition for cartman
# 5. Why did the interpreter give you this error?
# there has been no method definition for cartman, even though it is understood to be a method because of the parentheses

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase()

# 1. What is the line number where the error occurs?
# in line 68, the method definition takes zero arguments, and it line 72, one argument is passed to the method
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# The error is really in the method call in line 72, because the wrong number of arguments are being passed into the method. The phrase 'I hate Kyle' is being passed in even though the method takes no arguments
# 5. Why did the interpreter give you this error?
# Ruby requires that a method be passed the appropriate number of arguments. Sometimes, arguments may be optional or variable, but in this case none were specified when the method was defined.

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("BOOOO")
=end
# 1. What is the line number where the error occurs?
# 91, because it doesnt provide the correct number of args that 87 dictates
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# In line 91, the method id called with no arguments, but the method was defined in line 87 as requiring one argument
# 5. Why did the interpreter give you this error?
# Ruby requires that a method be passed the number of arguments specified in the method definition.



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

(fixed) cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')
=end
# 1. What is the line number where the error occurs?
# 112, because the wrog number of args are passed as dictated by 108
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# In line 112 when the method is called, only one argument is given (presumably, the lie) and no second argument is given for the name
# 5. Why did the interpreter give you this error?
# Ruby requires that a method be passed the number of arguments specified in its method definition.

# --- error -------------------------------------------------------

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 127
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# The interpreter cannot take the number 5 'respect my authoritay' times. It would actually work if the string came first and then multiplied by 5, and the string could be printed 5 times.
# 5. Why did the interpreter give you this error?
# Multiplying a number by a string only works when the string is multiplied (number) times, and it fails when the number is multipled (string) times

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# 142
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# the number 20 is divided by the number 0, which mathematically is an undefined result
# 5. Why did the interpreter give you this error?
# the variable amount_of_kfc_left is unable to be evaluated because the mathematical expression is undefined

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 158
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/marshall etc etc /cartmans_essay_md
# 4. Where is the error in the code?
# There is no file in my directory called cartmans_essay.md, so the error is the filepath passed to require.
# 5. Why did the interpreter give you this error?
# There is no file in my directory called cartmns_essay.md


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?
I think they were all very straightforward.. I guess the unexpected end-of-input is hard because it goes to the last line of the file, and the nomethoderror may also be confusing if I believe the method exists.
How did you figure out what the issue with the error was?
I just read the straightforward error messages.
Were you able to determine why each error message happened based on the code?
Yes
When you encounter errors in your future code, what process will you follow to help you debug?
I will try to go the line number first to see if it is straightforward. Other methods to debug may including printing variables or objects midway through my code to see what their values are at different places, or commenting out sections of my code to isolate problems. It is also important to go through each possible branch of a conditional to make sure a program works, and to provide different types of arguments (for example, a positive number, negative number, and 0, or a string and an integer) and see how the program responds

=end