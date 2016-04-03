
def titleize(input_sentence)

sentence_result = ""
sentence_array = input_sentence.split(" ")

sentence_array.each do |i|
  sentence_array[sentence_array.index(i)] = i.capitalize
end

the_index_of_last_word = (sentence_array.length) -1

sentence_array.each do |i|
  if sentence_array.index(i) > the_index_of_last_word
    sentence_result << (i + " ")
  else
    sentence_result << (i + ".")
  end    
end

p sentence_result

end

titleize("asdf asdf asdfasdf asdf")
