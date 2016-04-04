
welcome = "Hello, welcome to play the tic tac toe"
board_hash = Hash[:first_line, {}, :second_line, {}, :third_line, {},:fourth_line, {}]


def star_the_board(input)
  count = 0
  4.times do
    input[:first_line]["f#{count}"] = "#{count}"
    count += 1
    end 

  input[:second_line]["A0"] = "A"
  input[:third_line]["B0"] = "B"
  input[:fourth_line]["C0"] = "C"

  count = 1
  3.times do
  input[:second_line]["A#{count}"] = "-"
  input[:third_line]["B#{count}"] = "-"
  input[:fourth_line]["C#{count}"] = "-"  
  count +=1
  end
end

def display_the_board(input)

p input[:first_line].values
p input[:second_line].values
p input[:third_line].values
p input[:fourth_line].values

end

display_the_board(board_hash)
star_the_board(board_hash)
display_the_board(board_hash)



# 0 1 2 3
# A - - - 
# B - - -
# C - - -
