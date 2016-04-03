def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracing'
  when '3'
    'Mutiplying'
  when '4'
    'Dividing'
  end
end

def integer?(input)
  input.to_i.to_s == input
end

number1 = nil
number2 = nil
name = nil
operator = nil

prompt("Welcome to Calculator Enter your name:")

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi, #{name}")

loop do # main loop
  loop do
    prompt("What's the first number1?")
    number1 = Kernel.gets().chomp()
    if integer?(number1)
      break
    else
      prompt("Hmm....thst doesn't look like a valid number")
    end
  end

  loop do
    prompt("What's the second number2?")
    number2 = Kernel.gets().chomp()

    if integer?(number2)
      break
    else
      prompt("Hmm....thst doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform
    1)add
    2)subtrace
    3)mutiply
    4)divide
  MSG

  prompt(operator_prompt)

  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two number..")

  result = case operator
           when "1"
             number1.to_i + number2.to_i
           when "2"
             number1.to_i - number2.to_i
           when "3"
             number1.to_i * number2.to_i
           when "4"
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculator agiain)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt "Thank you for using the calculator. Good bye!"
