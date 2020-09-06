require 'pry'


def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  user_input = get_user_input
  until user_input == 'h' || user_input == 's'
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == 'h'
    total = total + deal_card
  elsif user_input == 's'
    total
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  # first_hit = initial_round
  # hit?(first_hit)
  # user_input = get_user_input
  #   if user_input == 's'
  #     hit?(first_hit)
  #   elsif user_input == 'h'
  #     deal_card
  #   end
  #   if total > 21
  #   end_game(total)
  # end
end
