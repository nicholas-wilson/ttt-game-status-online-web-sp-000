# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], # bottom row
  [2, 4, 6],  #diagonal right to left
  [0, 3, 6], # left column
  [1, 4, 7], #middle column
  [2, 5, 8], # right column
  [0, 4, 8] # diagonal left to right
]

#won? Did a player attain victory
def won?(board)
  for win_combination in WIN_COMBINATIONS
    if (board[win_combination[0]] == 'X' && board[win_combination[1]] == 'X' && board[win_combination[2]] == "X")
      return win_combination
    elsif (board[win_combination[0]] == 'O' && board[win_combination[1]] == 'O' && board[win_combination[2]] == "O")
      return win_combination
    end
  end
  return false
end

#full? checks to see if the board is filled
def full?(board)
  board.all? do |position|
    (board[position] == "X" || board[position] == "O")
  end
end