# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [.5] hours on this challenge.

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

class BingoBoard
  
  def initialize(board)
    @bingo_board = board
    @bingo = [0,1,2,3,4]
    @bingo_letters = { 0: "B", 1: "I", 2: "N", 3: "G", 4: "O" }
    @column = 0
  end

  def call_spaces
    # randomly generate letter (BINGO)
       @letter = @bingo.shuffle[0]
    # randomly generate number (1-100)
       @number = rand(1..100)
    # call combination of letter and number
       p "The next space is " + "#{@letter}" + "#{@number}... " + "#{@letter}" + "#{@number}" + "."

  end

  def check_board
    # use generated letter to determine column number
      @column = @bingo_letters[@letter]
    # check if corresponding number is on the board
      @bingo_board.map do |element|
        if element[@letter] == @number
    # if it is, replace that number with an 'X'
          element[@letter] = "X"
      end
  end

  def display_board
    return bingo_board
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection

