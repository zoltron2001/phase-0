# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.

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
    @dry_remark = ["You won't believe this one. ","Oh wow, ", "Hey look at that, ", "Now we're having fun. ", "Don't spend it all in one place. ", "Is it getting hot in here? "]
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
     puts " "+@dry_remark[0]+@letter+"-"+@number+"... "+@letter+"-"+@number+"."
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
    puts "  "+@bingo_board[0].join("  ")
    puts "  "+@bingo_board[1].join("  ")
    puts "  "+@bingo_board[2].join("  ")
    puts "  "+@bingo_board[3].join("  ")
    puts "  "+@bingo_board[4].join("  ")
    puts
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

