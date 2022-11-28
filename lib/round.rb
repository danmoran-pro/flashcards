class Round
  attr_reader :deck, :turns, :number_correct
  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = 0
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
    new_turn = Turn.new(current_card, guess)
    
    if new_turn.correct?
      @number_correct += 1
    end
    @turns <<  new_turn
    @deck.cards.shift
    new_turn
  end

  def number_correct_by_category(cate)
    number_correct_by_category = 0
    @turns.each do |turn|
      if turn.correct? && turn.card.category == cate
       number_correct_by_category += 1
      end
    end
    number_correct_by_category
  end

  def percent_correct
    (@number_correct/turns.count.to_f)*100
  end 

  def percent_correct_by_category(cate)
    number_correct_by_category(cate)*100
  end

  def start
    puts ""
    
    puts "Welcome! You're playing with #{@deck.count} cards."
    puts "-" * 50
    
    # require 'pry'; binding.pry
    @deck.cards.each_with_index do |card, index|
      card_number = index + 1
      puts "This is card number #{card_number} out of 4."
      puts "Question: #{card.question}"
      guess = gets.chomp
      take_turn(guess)
      puts turns.last.feedback
      card_number += 1
    end

  end

end