class Turn
  
  def initialize(card, guess)
    @card = card
    @guess = guess
  end

  def correct?
    @card.answer == @guess
  end
  
  def feedback
    if correct?
      "Correct"
    else 
      "Incorrect."
    end
  end
  end