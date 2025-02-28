def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
    return input.to_i - 1
end

def valid_move?(board, index)
    return index < 9 && index > -1 && board[index] == " "
end

def move(board, index, token = "X")
    board[index] = token
    return board
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    
    if valid_move?(board, index)
        move(board, index, "X")
    else
        turn(board)
    end
    display_board(board)
end