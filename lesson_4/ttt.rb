welcome = "Hello, welcome to play the tic tac toe"
@board_status = Array.new(4) {Array.new(4,"-")}

def restar_the_board(input = @board_status)
  input.each do |i|
    count = 0
    4.times do
      i[count]="-"
    count +=1
    end
  end
  start_the_baord
end

def start_the_baord(input = @board_status)
  count = 0 
  4.times do 
    input[0][count]="#{count}"
    count += 1
  end

  index = 1
  head_charactors = ["A", "B" ,"C"]
  head_charactors.each do |i|
    input[index][0] = i
    index += 1
  end
end

def display_board
  @board_status.each do |i|
    p i
  end
end

def user_marks_square_UI
  puts "Please choice a square you want"
  @choice = gets.chomp.upcase
  valid_choice = []
  valid_choice_array = ["A", "B", "C"].product ["1", "2", "3"]
  valid_choice_array.each do |y,x|
    valid_choice <<"#{y}#{x}"
  end
  loop do
    if valid_choice.include?(@choice)
      break
    else
      puts "#{@choice} is not a valid value, please key a valid value"
      @choice = gets.chomp.upcase
    end
  end
  return @choice
end

def computer_choice
  compuer_choice_array = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
  @choice = compuer_choice_array.sample
end

def check_marks_available  # put valid choice, return a boolean ,wheather the square is available or not
  case @choice
  when "A1"
    return @board_status[1][1] == "-" 
  when "A2"
    return @board_status[1][2] == "-"
  when "A3"
    return @board_status[1][3] == "-"
  when "B1"
    return @board_status[2][1] == "-"
  when "B2"
    return @board_status[2][2] == "-"
  when "B3"
    return @board_status[2][3] == "-"
  when "C1"
    return @board_status[3][1] == "-"
  when "C2"
    return @board_status[3][2] == "-"
  when "C3"
    return @board_status[3][3] == "-"
  end
end

def user_marks_square
  case @choice
  when "A1"
    @board_status[1][1] = "O"
  when "A2"
    @board_status[1][2] = "O"
  when "A3"
    @board_status[1][3] = "O"
  when "B1"
    @board_status[2][1] = "O"
  when "B2"
    @board_status[2][2] = "O"
  when "B3"
    @board_status[2][3] = "O"
  when "C1"
    @board_status[3][1] = "O"
  when "C2"
    @board_status[3][2] = "O"
  when "C3"
    @board_status[3][3] = "O"
  end
end

def computer_marks_square
  case @choice
  when "A1"
    @board_status[1][1] = "X"
  when "A2"
    @board_status[1][2] = "X"
  when "A3"
    @board_status[1][3] = "X"
  when "B1"
    @board_status[2][1] = "X"
  when "B2"
    @board_status[2][2] = "X"
  when "B3"
    @board_status[2][3] = "X"
  when "C1"
    @board_status[3][1] = "X"
  when "C2"
    @board_status[3][2] = "X"
  when "C3"
    @board_status[3][3] = "X"
  end
end

def check_win  # if someone win the game , return the winner ,or return false
  if ((@board_status[1][1] == @board_status[1][2] && @board_status[1][2] == @board_status[1][3] &&  @board_status[1][2] == "O" ) || 
     (@board_status[2][1] == @board_status[2][2] && @board_status[2][2] == @board_status[2][3] && @board_status[2][2]  == "O" )||
     (@board_status[3][1] == @board_status[3][2] && @board_status[3][2] == @board_status[3][3] && @board_status[3][2] == "O" )||
     (@board_status[1][1] == @board_status[2][1] && @board_status[2][1] == @board_status[3][1] && @board_status[2][1] == "O" )||
     (@board_status[1][2] == @board_status[2][2] && @board_status[2][2] == @board_status[3][2] && @board_status[2][2] == "O" )||
     (@board_status[1][3] == @board_status[2][3] && @board_status[2][3] == @board_status[3][3] && @board_status[2][3] == "O" )||
     (@board_status[1][1] == @board_status[2][2] && @board_status[2][2] == @board_status[3][3] && @board_status[2][2] == "O" )||
     (@board_status[1][3] == @board_status[2][2] && @board_status[2][2] == @board_status[3][1] && @board_status[2][2] == "O"))
     display_board
     puts "The Winner is YOU!!!"
     true
  elsif ((@board_status[1][1] == @board_status[1][2] && @board_status[1][2] == @board_status[1][3] &&  @board_status[1][2] == "X" ) || 
     (@board_status[2][1] == @board_status[2][2] && @board_status[2][2] == @board_status[2][3] && @board_status[2][2]  == "X" )||
     (@board_status[3][1] == @board_status[3][2] && @board_status[3][2] == @board_status[3][3] && @board_status[3][2] == "X" )||
     (@board_status[1][1] == @board_status[2][1] && @board_status[2][1] == @board_status[3][1] && @board_status[2][1] == "X" )||
     (@board_status[1][2] == @board_status[2][2] && @board_status[2][2] == @board_status[3][2] && @board_status[2][2] == "X" )||
     (@board_status[1][3] == @board_status[2][3] && @board_status[2][3] == @board_status[3][3] && @board_status[2][3] == "X" )||
     (@board_status[1][1] == @board_status[2][2] && @board_status[2][2] == @board_status[3][3] && @board_status[2][2] == "X" )||
     (@board_status[1][3] == @board_status[2][2] && @board_status[2][2] == @board_status[3][1] && @board_status[2][2] == "X"))
      display_board
      puts "The winner is computer"
      true
  else
    false
  end
end

def check_the_board_is_available
  if @board_status.flatten.include?("-")
    false
  else
    true
  end
end

def check_the_board_is_available_computer?
  if @board_status.flatten.include?("-")
    false
  else
    true
  end
end

def play_again
  puts "Do you want to play again?"
  input = gets.chomp

  if input.downcase =="y"
    false
  else
    true
  end
end

puts welcome
start_the_baord

loop do
  display_board
  loop do
      user_marks_square_UI
      if check_marks_available
         user_marks_square
         break
      else
        puts "You should marks the square where is available"
      end
  end

  loop do
    break if check_the_board_is_available_computer?
       computer_choice
    if check_marks_available
       computer_marks_square
       display_board
      break
    end
  end
  if check_win # it will check player first, so do not need to check between player and computer
    if play_again
      puts "Thank you for playing the game~~"
      break
    else
      restar_the_board
    end
  elsif check_the_board_is_available
        puts "TIE~~~"
    if play_again
      puts "Thank you for playing the game"
      break
    else
      restar_the_board
    end
  end
end
