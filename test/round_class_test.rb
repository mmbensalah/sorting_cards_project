require "pry"
require "./lib/sorting_cards"
require "./lib/deck_class"
require "./lib/guess_class"
require "./lib/round_class"
require "minitest/autorun"
require "minitest/pride"

class RoundTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal round.deck, deck
  end


  # def test_guesses
  #   card_1 = Card.new("3","Hearts")
  #   card_2 = Card.new("4", "Clubs")
  #   card_3 = Card.new("5", "Diamonds")
  #   guess = Guess.new("", "")
  #   deck = Deck.new([card_1, card_2, card_3])
  #   round = Round.new(deck)
  #   assert_equal 0, round.guesses(@response)
  # end
  #
  # def test_current_card
  # end
  #
  # def test_record_guess
  # end
  #
  # def test_guesses_count
  # end
  #
  # def test_guesses_first_feedback
  # end
  #
  # def test_number_correct
  # end
  #
  # def test_percent_correct
  # end

end
