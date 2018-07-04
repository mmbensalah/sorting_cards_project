require "./lib/sorting_cards"

class Deck
attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort_method
    arr = @cards.length

    loop do
      sorted = false

      (arr-1).times do |i|
        if @cards[i].total_value > @cards[i+1].total_value
          @cards[i], @cards[i+1] = @cards[i+1], @cards[i]
          sorted = true
        end
      end
      break if sorted == false
      end
      @cards
    end
end
