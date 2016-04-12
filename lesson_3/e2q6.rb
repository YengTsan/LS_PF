ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_array = ages.values
the_samllest_age = ages_array[0]

ages_array.each {|age| the_samllest_age = age if (the_samllest_age > age) }

p the_samllest_age
