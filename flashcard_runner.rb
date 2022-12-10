require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

@card_1 = Card.new("What is 5 + 5", "10", :STEM)
@card_2 = Card.new("What Is Rachel's favorite animal", "panda", :Turing_staff)
@card_3 = Card.new("What is Mike's middle name?", "noboby knows", :Turing_staff)
@card_4 = Card.new("What cardboard cutout lives at Turing?", "Justin Beiber", :Pop_culture)

# require 'pry'; binding.pry
@cards = [@card_1, @card_2, @card_3,@card_4] #card_5, card_6, card_7, card_8, card_9, card_10, card_11, card_12, card_13, card_14, card_15, card_16, card_17, card_18, card_19, card_20, card_21, card_22, card_23, card_24, card_25, card_26, card_27, card_28, card_29]
@deck_1 = Deck.new(@cards)
@round_1 = Round.new(@deck_1)

def start(round)
  # require 'pry'; binding.pry
  card_count = @deck_1.cards.count
  
  puts ""
  
  puts "Welcome! You're playing with #{card_count} cards."
  puts "-" * 50
  
  round.deck.cards.each do |card|
    card_number = round.deck.cards.index(card) + 1
    puts "This is card number #{card_number} out of #{card_count}."
    puts "Question: #{card.question}"
    
    guess = gets.chomp
    
    round.take_turn(guess)
    puts round.turns.last.feedback
    # card_number += 1
  end
end
 
start(@round_1)