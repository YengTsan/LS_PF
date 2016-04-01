

Kernel.puts("Welcome to Calculator")

Kernel.puts("What's the first number1?")
number1 = Kernel.gets().chomp().to_i

Kernel.puts("")

Kernel.puts("What's the second number2?")
number2 = Kernel.gets().chomp().to_i

Kernel.puts("What's operation would you like to perform? 1) add 2)subtrace 3)mutiply 4)divide")
operator = Kernel.gets().chomp()

case
when operator == "1"
  result = number1 + number2
when operator == "2"
  result = number1 - number2
when operator == "3"
  result = number1 * number2
when operator == "4"
  result = number1.to_f / number2.to_f
end


Kernel.puts("The result is #{result}")

