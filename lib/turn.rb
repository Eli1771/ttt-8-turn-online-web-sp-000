def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8) 
    return true
  else 
    return false
  end 
end 

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    return false
  else 
    return true 
  end 
end 

def input_to_index(input)
  index = input.to_i - 1
end 

def move(board, index, token = "X")
  board[index] = token
end 

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board, index) == true
    puts "Not a valid move. Try again!"
    turn(board)
  end
  move(board, index)
  display_board(board)
end 