require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1 + rand(11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
   puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
   gets.chomp 
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_1 = deal_card
  card_2 = deal_card
  sum = card_1 + card_2
  display_card_total(sum)
  return sum 
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(number)
  # code hit? here
  prompt_user
  input = get_user_input
  players_card_total = number
 
  
    if input == 's'
      return players_card_total  
    elsif input == 'h'
      players_card_total += deal_card
      return players_card_total
    else
      while true 
        invalid_command
        prompt_user
        input = get_user_input
          if input == 's'
            return players_card_total  
          end 
          if input == 'h'
              players_card_total += deal_card
              return players_card_total
          end 
      end 
    end 
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

welcome 
initial_round
players_card_total = initial_round

  until players_card_total > 21
    hit?(players_card_total)
    players_card_total += hit?(players_card_total)
    display_card_total(players_card_total)

  end 
  end_game
end
    
