def welcome
  # code #welcome here
  
  puts "Welcome to the Blackjack Table"
  
end

def deal_card
  # code #deal_card here
  
  return rand(1..11)
  
end

def display_card_total(num)
  # code #display_card_total here
  
  puts "Your cards add up to #{num}"
  
end

def prompt_user
  # code #prompt_user here
  
  puts "Type 'h' to hit or 's' to stay"
  
end

def get_user_input
  # code #get_user_input here
  
  return gets.chomp
  
end

def end_game
  # code #end_game here
  
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  
end

def initial_round
  # code #initial_round here
  
  card1 = deal_card
  card2 = deal_card
  sum = card2 + card1
  display_card_total(sum)
  return sum 
  
end

def hit?(card_sum)
  # code hit? here
  
  prompt_user 
  ans = get_user_input
  if ans == "h"
    card = deal_card
    sum = card_sum + card
    display_card_total(sum)
  elsif ans == "s"
    display_card_total(sum)
  else 
    invalid_command(sum)
  end
  
  return sum 
  
end

def invalid_command
  # code invalid_command here
  
  puts "Please enter a valid command"
  prompt_user
  
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  
  welcome
  hand  = initial_round
  input == ""
  while input != "h"
    prompt_user
    input = get_user_input
  end
  
  while hand < 21
   hand = hit?(hand)
  end 
  
  if hand > 21
    end_game(hand)
  end
     
  
end
    
