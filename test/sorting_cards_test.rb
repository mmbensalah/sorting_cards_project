require "./lib/sorting_cards"
require "minitest/autorun"
require "minitest/pride"

class CardTest < Minitest::Test

  def test_for_class
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_instance_variables
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
    assert_equal "Spades", card.suit
  end

  def test_total_value
    card = Card.new("Ace", "Spades")
    assert_equal 14.9, card.total_value
  end
end
