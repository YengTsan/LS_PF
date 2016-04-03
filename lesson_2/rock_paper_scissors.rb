VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def game_result (player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'scissors' && computer == 'paper') ||
     (player == 'paper' && computer == 'rock')
     prompt "You won!"
  elsif
     (player == 'rock' && computer == 'paper') ||
     (player == 'paper' && computer == 'scissors') ||
     (player == 'scissors' && computer == 'rock')

    prompt("You lose")
  else
    prompt("It's a tie!")
  end
end

loop do # main loop
  player = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player = Kernel.gets().chomp()

    if VALID_CHOICES.include?(player)
      break
    else
      prompt("That;s not a valid choice.")
    end
  end

  computer = VALID_CHOICES.sample()
  game_result(player, computer)
  prompt("You chose: #{player}  computer chose: #{computer}")

  prompt("Do you want to play again?")
  play_again = gets().chomp()

  unless play_again.downcase == 'y' 
    break
  end
end

prompt("Thank you for playing the game. Good bye!")
