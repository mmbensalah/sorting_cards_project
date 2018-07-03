require "pry"
require "./lib/sorting_cards"
require "./lib/deck_class"
require "minitest/autorun"
require "minitest/pride"

class DeckTest < Minitest::Test

  def test_it_exists
    card = Card.new("Ace", "Spade")
    deck = Deck.new(card)
    assert_instance_of Deck, deck
  end

  # def test_cards
  #   card_1 = Card.new("Ace", "Spade")
  #   card_2 = Card.new("1", "Spade")
  #   deck = Deck.new([card_1, card_2])
  #   assert_equal deck, deck
  # end

  def test_count
    card_1 = Card.new("Ace", "Spade")
    card_2 = Card.new("1", "Spade")
    deck = Deck.new([card_1, card_2])
    assert_equal 2, deck.count
  end
end
