def charactors_include?(input_string)
  charactors = []
  charactors << ("a".."z").to_a
  charactors << ("A".."Z").to_a
  charactors = charactors.flatten(2)

  charactors.each do |i|
    if input_string.include?(i)
      return true
    end
    return false
  end
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  if dot_separated_words.length != 4
    return false
  elsif dot_separated_words.include?("")
    return false
  elsif charactors_include?(input_string)
    return false
  else
    return true
  end
end


p dot_separated_ip_address?("12.321.432.4")
p dot_separated_ip_address?("12.321.432")
p dot_separated_ip_address?("12.321.432....4")
p dot_separated_ip_address?("12.321.432.asdf")