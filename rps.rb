round = 0
player_score = 0
computer_score = 0

puts "ROCK, PAPER, SCISSORS - Best out of 5 rounds."
while round < 5 do
	print "Rock, Paper, or Scissors? "

	player = gets.chomp.downcase
	computer_options = ["rock", "paper", "scissors"]
	computer = computer_options.sample

	if (player === "rock" && computer === "paper")
		puts "Paper beats rock. You lose this round."
		computer_score += 1
	elsif (player === "rock" && computer === "scissors")
		puts "Rock beats scissors. You win this round."
		player_score += 1
	elsif (player === "paper" && computer === "rock")
		puts "Paper beats rock. You win this round."
		player_score += 1
	elsif (player === "paper" && computer === "scissors")
		puts "Scissors beat paper. You lose this round."
		computer_score += 1
	elsif (player === "scissors" && computer === "rock")
		puts "Rock beats scissors. You lose this round."
		computer_score += 1
	elsif (player === "scissors" && computer === "paper")
		puts "Scissors beat paper. You win this round"
		player_score += 1
	elsif (player === computer)
		puts "You both chose #{player}. It's a tie."
	else
		puts "Please enter rock, paper, or scissors"
		round -= 1
	end
	
	round += 1
end

if (player_score > computer_score)
	puts " "
	puts "Congratulations! You won the game!"
	puts "Your score: #{player_score} | Computer's score: #{computer_score}"
elsif (player_score < computer_score)
	puts " "
	puts "You lost the game. Please try again."
	puts "Your score: #{player_score} | Computer's score: #{computer_score}"
elsif (player_score === computer_score)
	puts " "
	puts "Final game results: It's a tie!"
	puts "Your score: #{player_score} | Computer's score: #{computer_score}"
end

	