sentence = "Humpty Dumpty sat on a wall."
words = sentence.split(/\W/)
words.reverse!
final_sentence = words.join(' ') + '.'

p final_sentence
