
def fizz_and_buzz (num1,num2)


the_array = (num1..num2).to_a

the_array.each do |i|
  if i % 3 == 0 && i % 5 == 0
    puts "FizzBuzz"
  elsif  i % 3 == 0
    puts "Fizz"
  elsif  i % 5 == 0
    puts "Buzz"
  else
    puts i
  end
end
end

fizz_and_buzz(1,30)
fizz_and_buzz(10,22)

