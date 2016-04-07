statement = "The Flintstones Rock"

statement_array = statement.scan(/\w/)

statement_hash = {}

statement_array.each do |i|
  statement_hash[i] = statement_array.count(i)
end

p statement_hash

