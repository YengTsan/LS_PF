def uuid_method
  charactors = []
  ("0".."9").each {|i| charactors << i }
  ("a".."z").each {|i| charactors << i}

  uuid_style = [8, 4, 4, 4, 12]
  uuid = ""
  uuid_style.each do |i|
    i.times {uuid << charactors.sample}
    uuid << "-" unless uuid_style.index(i) == (uuid_style.length) -1
  end
  uuid
end

p uuid_method
