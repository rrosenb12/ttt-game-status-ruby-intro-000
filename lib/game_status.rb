# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8],
  [0,3,6], [1,4,7], [2,5,8],
  [0,4,8], [6,4,2]]

  def won?(board)
    if board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      return false
    elsif board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
      return false
    end
    win_combinations.each do |win_array|
      win_array.to_ary
      if won?(board) = win_array
        return true
      else
        return false
      end
    end
  end
