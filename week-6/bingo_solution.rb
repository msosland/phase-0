# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 2 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #choose a random number between 1 and 5. if 1 choose b 2 choose i etc
  #choose a random number between 1 and 100

# Check the called column for the number called.
  #if b look at the 0 index of each subarray
  #if i look at the 1 index of each subarray etc
  #iterate through n-th index elements and see if any match the number

# If the number is in the column, replace with an 'x'
  #iterate through n-th index elements and see if any match the number
  #if there is a match replace with string X

# Display a column to the console
  # accept b i n g or o as argument
  # print a blank line
  # if b print each 0 index element of each subarray to screen on a new line
  # if i print each 1 index, etc


# Display the board to the console (prettily)
  #print a blank line
  #print a top line of BINGO
  #iterate through the 5 elements of the array
  #print each nested array on a new line

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @lastcall = ''
    x = rand(5)
    case x
    when 0
      @lastcall += 'B'
    when 1
      @lastcall += 'I'
    when 2
      @lastcall += 'N'
    when 3
      @lastcall += 'G'
    when 4
      @lastcall += 'O'
    end
    @lastcall += rand(1..100).to_s
    @lastcall
  end

  def check
    letter = @lastcall[0]
    number = @lastcall[1..-1].to_i
    case letter
    when 'B'
      index = 0
    when 'I'
      index = 1
    when 'N'
      index = 2
    when 'G'
      index = 3
    when 'O'
      index = 4
    end
    @bingo_board.each do |subarray|
      if subarray[index] == number
        subarray[index] = 'X'
      end
    end
    display_board
  end

  def display_board
    p 'B   I   N   G   O'
    @bingo_board.each {|sub| p sub}
    return
  end

  def display_column(letter)
    unless letter == 'B' || letter == 'I' || letter == 'N' || letter == 'G' || letter == 'O'
      raise ArgumentError.new("Invalid column")
    end
    x = letter
    case x
    when 'B'
      index = 0
    when 'I'
      index = 1
    when 'N'
      index = 2
    when 'G'
      index = 3
    when 'O'
      index = 4
    end
    @bingo_board.each {|sub| p sub[index]}
  end

end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @lastcall = ''
    @lastcall += ['B', 'I', 'N', 'G', 'O'].sample
    @lastcall += rand(1..100).to_s
    puts @lastcall
    check
  end

  def check
    letter = @lastcall[0]
    number = @lastcall[1..-1].to_i
    index = 'BINGO'.index(letter)
    @bingo_board.each do |subarray|
      if subarray[index] == number
        subarray[index] = 'X'
      end
    end
    display_board
  end

  def display_board
    p 'B   I   N   G   O'
    @bingo_board.each {|sub| p sub}
    return
  end

  def display_column(letter)
    unless 'BINGO'.include?(letter)
      raise ArgumentError.new("Invalid column")
    end
    index = 'BINGO'.index(letter)
    @bingo_board.each {|sub| p sub[index]}
  end

end

#OPTIONAL CREATE LEGAL BOARD METHOD
# create empty array
# 5 times create a mini array
# for each mini array push a random number between 1 and 15, then a random number between 16 and 30, then a random number between 31 and 45, then a random number between 46 and 60, and then a random number between 61 and 75.
#   push each mini array to big array

#   print it prettily using same code block from class

def create_legal_board
  board = []
  5.times do
    mini = []
    mini << rand(1..15)
    mini << rand(16..30)
    mini << rand(31..45)
    mini << rand(46..60)
    mini << rand(61..75)
    board << mini
  end
  p 'B   I   N   G   O'
  board.each {|sub| p sub}
end





#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


p new_game.call
p new_game.call
p new_game.call
p new_game.call
p new_game.call
p new_game.call
p new_game.call
p new_game.call
p new_game.call
p new_game.call
p new_game.call
p new_game.call
# p new_game.check
p new_game.call
# p new_game.call
# p new_game.check
p new_game.call
# p new_game.call
# p new_game.check
# p new_game.call
# p new_game.check
p new_game.call
# p new_game.call
# p new_game.check

# p new_game.call
# p new_game.check



new_game.display_column('O')

create_legal_board

#Reflection

# # How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# #   I did not think it was too difficult to pseudocode for this challenge.
# #   But I was setting myself for the long-winded case statements because I could not remember the sample method off the top of my head. So instead
# #     of pseudocoding "pick a random letter from BINGO" I pseudocoded to pick a random number between 1 and 5 and then case/when my way through them all. That made me initial solution be very long!
# #       I will also say that as my code got longer, I stopped scrolling up to actually see what was next in my pseudocode - so, I was not really using it at that point.


# # What are the benefits of using a class for this challenge?
# Well, each game is a separate instance which is going to be comprised of different bingo calls.
# Each game has unique instance variables of what the board looks like and what the last called letter/number combo was.
# Those instance variables can be accessed across the class methods which is very useful. Finally, the methods can all be accessed within one another.
# So, I ended up adding a call to the check method inside the .call method, since it would always make sense to check
# after each call, and I called the display board method inside the check method.


# # How can you access coordinates in a nested array?
# To access the 1 index of the 2 indexed element, you can type array[2][1].
# As I was iterating through the board, I looked at specific indices of each subarray element.

# # What methods did you use to access and modify the array?
# I typically used each, then added an index to each subarray in the each iteration. For example in my check method, I used `@bingo_board.each do |subarray|`
# then `if subarray[index]`etc... I wrote similar code to display one column.

# # Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# Well, I used the .sample method to replace all of my case/when statements which made my refactored solution a whole lot shorter. The .sample method will select
#   one element at random from an array, so I created an array of letters to grab B, I, N, G, or O. I called it with `['B', 'I', 'N', 'G', 'O'].sample` which made it very easy to grab a letter randomly.
#   I also used the .include? method to make sure the parameter for display_column was a valid column with `unless `BINGO`.include?(letter)`
#   Finally, I also used the .index method to grab the index of a letter from the string BINGO, which once again eliminated the need for one of my stupid case/when sequences.

# # How did you determine what should be an instance variable versus a local variable?
# The @bingo_board instance variable was already in the code which made sense because in this game, there is only one board per game instance, and it never changes (except when numbers are X'ed out.)
# I created the @lastcall instance variable to be able to check whatever was called last from the .call method. As soon as the game is underway, there can
# always only be one last-called letter/number combo, so I think it makes sense as an instance variable that I can access in other methods, like .check.
# I did not find the need to create any other instance variable.

# # What do you feel is most improved in your refactored solution?
# Far and away, I eliminated 3 case/when sequences using the .sample and .index methods instead of trying to turn a random number between 1 and 5 into the letters B, I, N, G, O, or vice-versa into indices.

#   I also ended up calling the check method in the call method, because it would never really make sense to not run one with the other, and call should be the one that is always called first.

