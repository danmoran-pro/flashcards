require './lib/card.rb'
require './lib/turn'
require './lib/deck.rb'
require './lib/round.rb'

RSpec.describe Round do
  before(:each) do
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @deck = Deck.new([@card_1, @card_2, @card_3])
  end

  it 'can create a round' do
    round = Round.new(@deck)

    expect(round).to be_instance_of(Round)
    expect(round.deck).to eq(@deck)
    expect(round.turn).to eq([])

    expect(round.current_card).to eq(@card_1)
    
    new_turn = round.take_turn("Juneau")
    
    expect(new_turn.class).to eq(Turn)
    expect(new_turn.correct?).to be(true)
    expect(round.turns).to eq([@new_turn])
    expect(round.number_correct).to eq(1)
    
    expect(round.current_card).to eq(@card_2)
    
    round.take_turn("Venus")
    expect(round.turns.count).to eq(2)
    expect(round.turns.last.feedback).to eq("Incorrect.")
    expect(round.number_correct).to eq(1)
    expect(round.number_correct_by_category(:Geography)).to eq(1)
    expect(round.number_correct_by_category(:STEM)).to eq(0)
    expect(round.percent_correct).to eq(50.0)
    expect(round.percent_correct_by_category(:Geography)).to eq(100.0)
    
    expect(round.current_card).to eq(@card_3)
  end
end
