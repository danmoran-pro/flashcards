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
end