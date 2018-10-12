class TicTacToe

 def initialize(board = nil)
   @board = board || Array.new(9, " ")
 end

 WIN_COMBINATIONS = [[0,1,2],
 [3,4,5],
 [6,7,8],
 [0,3,6],
 [1,4,7],
 [2,5,8],
 [0,4,8],
 [6,4,2]
 ]

 def display_board
   puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
   puts "-----------"
   puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
   puts "-----------"
   puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
 end

 def input_to_index(user_input)
    converted_input = user_input.to_i - 1
    converted_input
 end

 def move(index, char)
  @board[index] = char
end

def position_taken?(index)
  @board[index] != " " && @board[index] != ""
end

def valid_move?(index)
  index.between?(0,8) && !position_taken?(index)
end


def turn_count
counter = 0

@board.each do |space|
  if space == "X" || space == "O"
  counter += 1

 end
end
 return counter

end




end
