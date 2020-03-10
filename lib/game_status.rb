# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8],
  [0,3,6], [1,4,7], [2,5,8],
  [0,4,8], [6,4,2]]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  def won?(board)
    if board.select{|space| space == " " || space.nil?}
      return false
    end
    WIN_COMBINATIONS.each do |win_combos|
      if array [win_combos[0]] == board
        return true
      end
    end
