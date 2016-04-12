flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
  puts flintstones.index(name) if name.start_with?("Be")
end

