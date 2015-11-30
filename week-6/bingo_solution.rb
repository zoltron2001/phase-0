# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.

# Release 0: Pseudocode
# Outline:
# => initialize
# =>   initialize input array
# =>   initialize an array of BINGO letters
# => call_spaces
# =>   randomly generate letter (BINGO)
# =>   randomly generate number (1-100)
# =>   call letter and number in single string
# => check_board
# =>   use generated letter to determine column
# =>   check if corresponding number is on the board
# =>   if it is, replace that number with an 'X'
# => display_board
# =>   display new board
# =>   try to remove the array brackets and commas
# =>   bonus: add characters like dots to frame

# board = [[00, 01, 02, 03, 04],
#         [10, 11, 12, 13, 14],
#         [20, 21, 22, 23, 24],
#         [30, 31, 32, 33, 34],
#         [40, 41, 42, 43, 44]]

# Initial Solution

# class BingoBoard
  
#   def initialize(board)
#     @bingo_board = board.map do |array| 
#       array.map {|element| element = element.to_s}
#     end
#     @bingo = [0,1,2,3,4]
#     @bingo_letters = {0 => "B", 1 => "I", 2 => "N", 3 => "G", 4 => "O" }
#     @column = 0
#   end

#   def call_spaces
#      @letter_number = @bingo.shuffle[0]
#      @letter = @bingo_letters[@letter_number]
#      @number = rand(1..100).to_s
#      p "The next space is "+@letter+"-"+@number+"... "+@letter+"-"+@number+"."
#   end

#   def check_board
#     @column = @bingo_letters[@letter]
#     @bingo_board.map do |element|
#       if element[@letter_number] == @number
#         element[@letter_number] = "X"
#       end
#     end
#   end

#   def display_board
#     p @bingo_board[0]
#     p @bingo_board[1]
#     p @bingo_board[2]
#     p @bingo_board[3]
#     p @bingo_board[4]
#   end

# end

# Refactored Solution

class BingoBoard
  
  def initialize(board)
    @bingo_letters = {0 => "B", 1 => "I", 2 => "N", 3 => "G", 4 => "O" }
    # turn all the numbers on the board into strings
    @bingo_board = board.map do |array| 
      array.map {|element| element = element.to_s}
    end
    # put a space after "8" since it's a single digit number
    # conditional is incase someone tries this with a new board
    @bingo_board[0][3] = "8 " if @bingo_board[0][3] == "8"
    # flavor
    @dry_remark = ["Mamma mia.","Do I have a surprise for you.","You won't believe this one.","Oh wow.", "Hey look at that.", "Now we're having fun.", "Don't spend it all in one place.", "Is it getting hot in here?"]
  end

  def call_spaces
    # generate letter (BINGO)
     @letter_number = rand(0..4)
     @letter = @bingo_letters[@letter_number]
    # generate number (1-100)
     @number = rand(1..100).to_s
    # generate remark
     @dry_remark.shuffle!
    # print letter, number, remark
     puts
     puts " #{@dry_remark[0]} #{@letter}-#{@number}... #{@letter}-#{@number}."
  end

  def check_board
    # check if corresponding number is on the board
    # if it is, replace that number with an 'X'
    @bingo_board.map do |element|
      if element[@letter_number] == @number
        element[@letter_number] = "X "
      end
    end
  end

  def display_board
    # print elements and add spaces to array
    puts
    for number in 0..4
      puts "  "+@bingo_board[number].join("  ")
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call_spaces
new_game.check_board
new_game.display_board

#Reflection
=begin

  How difficult was pseudocoding this challenge? What do you think of 
  your pseudocoding style?
    
    Pseudocoding wasn't so bad. It actually helped me quite a bit in 
    breaking down the problem. I try not to get into specifics of 
    execution but rather to list the steps. I figure there are a ton
    of ways to accomplish a given goal, so I'd rather prolong 
    labeling my plan. Ideally, my pseudocode can be inserted directly
    into my code to both direct and explain my work.

  What are the benefits of using a class for this challenge?
    
    The problem requires a relatively complicated solution. Complicated 
    solutions should be broken into small steps (methods). But methods 
    can't share information between each other unless they're inside of 
    a class.

  How can you access coordinates in a nested array?

    If by coordinates you mean access an element in a nested array, 
    you end up writing something like this array[element1][element2]. 
    'element1' would be an inner array, and 'element2' would be the 
    element inside that array.

    If you're trying to determine what coordinate would belong to a 
    given element, I suppose I would iterate through the array and 
    add to a counter until I found it.

  What methods did you use to access and modify the array?
    
    The board array was directly affected by the following methods:
      .map
      .to_s
    But these are the methods I used throughout the entire class:
      .map
      .to_s
      .shuffle
      .join
      rand()

  Give an example of a new method you learned while reviewing the Ruby 
  docs. Based on what you see in the docs, what purpose does it serve, 
  and how is it called?

    Even though I've encountered it before, I haven't used .join a 
    whole lot as I did here. When I've used .join I haven't added 
    anything to elements. If I did use it that way, maybe I wasn't 
    driving.

    .join will join array elements together in a single string. If 
    you write something between the parentheses, e.g. .join(" "), 
    then those characters will be added between the elements. For 
    example:

      array = [1,2,3]
      puts array => 123
      puts array.join(" ") => 1 2 3

  How did you determine what should be an instance variable versus a 
  local variable?

    I ended up using an instance variable for everything since I 
    wasn't sure where I would need a given variable. I just scanned 
    through the code, and I think the only variable that could also 
    be local is @letter. It's only used in the check_board method.

  What do you feel is most improved in your refactored solution?

    The code and output are much cleaner/reader friendly. I was able 
    to get rid of some redundant/vestigial code. Namely, anything 
    associated with listing letters as an array and converting letters 
    into @columns. I ended up iterating instead of listing all the rows 
    to print.
    
=end