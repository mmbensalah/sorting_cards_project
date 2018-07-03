require "./lib/sorting_cards"
require "./lib/deck_class"
require "./lib/guess_class"

# attr_reader :deck

class Round
  def initialize(deck)
  @deck = deck
  end

  def deck
    Deck.new
  end

  def guesses(response)
    if @response < 0
      0
    end
  end

end
