



def uuid
char = ("a".."z").to_a + ("0".."9").to_a
number_char = [8,4,4,4,12]
result_array = []

number_char.each do |number|
  container=""
  number.times {container << char.sample}
  result_array << container
end 
result_array.join("-")
end

puts uuid