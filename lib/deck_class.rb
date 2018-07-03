require "./lib/sorting_cards"

# attr_reader :cards
# binding.pry
class Deck
  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end
end
