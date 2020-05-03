def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total card_total
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game n
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card() + deal_card()
  display_card_total(sum)
  sum
end

def hit? val
  # code hit? here
  prompt_user()
  u = get_user_input()
  until u == "s" or u == "h" 
    invalid_command()
    prompt_user()
    u = get_user_input()
  end
  u == "h" ? deal_card() + val : val
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome()
  cards = initial_round()
  until cards >= 21
    display_card_total(cards = hit?(cards))
  end
  end_game(cards) if cards > 21
end