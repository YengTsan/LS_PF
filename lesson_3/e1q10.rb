# I think that I nead a iterator to iterate through the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}

flintstones.each do |name|
  flintstones_hash[name] = flintstones.index(name)
end

p flintstones_hash
