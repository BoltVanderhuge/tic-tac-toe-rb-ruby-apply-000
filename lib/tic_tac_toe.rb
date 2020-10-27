
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # First collum
  [1,4,7],  # Second collum
  [2,5,8],  # Third collum
  [0,4,8],  # Diagonal left
  [2,4,6]   # Diagonal right
  
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X" || "O")
  board[index] = current_player
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn_count(board)
  count = 0


def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    if
      win_combo.all? do |win_index|
        board[win_index]=="X"
      end
      true
    elsif
      win_combo.all? do |win_index|
        board[win_index]=="O"
      end
      true
    else
      false
    end
  end
end

def full?(board)
  board.all? do |index|
    index=="X" || index=="O"
  end
  
end

def draw?(board)
<<<<<<< HEAD
  if full?(board)==true && won?(board)==nil
=======
  if full?(board)==true && won?(board)==false
>>>>>>> 04ae688c6d752d913fe25286918e95930b6ebde9
    true
end
end

def over?(board)
<<<<<<< HEAD
  if full?(board)==true || won?(board)!=nil || draw?(board)==true
=======
  if full?(board)==true || won?(board)!=false || draw?(board)==true
>>>>>>> 04ae688c6d752d913fe25286918e95930b6ebde9
    true
  else
    false
  end
  
end

def winner(board)
<<<<<<< HEAD
  if won?(board)!=nil
    board[won?(board).detect {|index| board[index]=="X" || board[index]=="O"}]
  else
    nil
=======
  if won?(board)!=false
    board[won?(board).detect {|index| board[index]=="X" || board[index]=="O"}]
  else
    false
  end
end