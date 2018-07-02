# require "pry"
require "./lib/sorting_cards"
require "minitest/autorun"
require "minitest/pride"

class CardTest < Minitest::Test

  def test_for_class
    card = Card.new("Ace", "Spade")
    assert_instance_of Card, card
  end

  def test_instance_variables
    card = Card.new("Ace", "Spade")
    assert_equal "Ace", card.value
    assert_equal "Spade", card.suit
  end

end
