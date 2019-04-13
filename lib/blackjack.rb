def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_round= deal_card + deal_card
  display_card_total(first_round)
  first_round
end

def hit?(card_total)
  prompt_user
  input= get_user_input
  until input == 's' || input == 'h'
  invalid_command
  prompt_user
  input = get_user_input
end
  if input == 's'
    card_total
  elsif input == 'h'
    card_total += deal_card
  end
end

def invalid_command
 puts "Please enter a valid command"
end

def runner
  welcome
 card_total = initial_round
  until card_total > 21
  hit?
  card_total
end
if input == 'h'
  deal_card
  elsif input == 's'
  hit?
end
end_game
end
    
