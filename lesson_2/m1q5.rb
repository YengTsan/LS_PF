def factors(number)
  dividend = number
  divisors = []
if 
  number <= 0 
  p "Please enter a number above 0"
else    
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
    end until dividend == 0
    p divisors
end
end


factors(0)
factors(-2)
factors(3)
factors(9)
factors(103)
factors(1424)
