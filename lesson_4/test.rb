a = [1, 2, 3, 4, 5]

b = a.select do |i| 
  i > 2
  true
end

puts b
