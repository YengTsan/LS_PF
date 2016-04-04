  valid_choice = []
  valid_choice_array = ["A", "B", "C"].product ["1", "2", "3"]
  valid_choice_array.each do |y,x|
    valid_choice <<"#{y}#{x}"
  end

p valid_choice
