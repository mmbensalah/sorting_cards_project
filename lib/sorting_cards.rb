require 'pry'

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def put_together
    "#{@value} of #{@suit}"
  end

  def total_value
    worth = {
      "2" => 2,
      "3" => 3,
      "4" => 4,
      "5" => 5,
      "6" => 6,
      "7" => 7,
      "8" => 8,
      "9" => 9,
      "10" => 10,
      "Jack" => 11,
      "Queen" => 12,
      "King" => 13,
      "Ace" => 14,
      "Clubs" => 0.25,
      "Diamonds" => 0.5,
      "Hearts" => 0.75,
      "Spades" => 0.90
    }
    total_value = worth[@value] + worth[@suit]
  end
end
