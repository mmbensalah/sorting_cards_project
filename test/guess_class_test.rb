require "pry"
require "./lib/guess_class"
require "./lib/sorting_cards"
require "minitest/autorun"
require "minitest/pride"

class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new("Ace", "Spade")
    guess = Guess.new("10 of hearts", card)
    assert_instance_of Guess, guess
  end

  def test_response
    card = Card.new("Ace", "Spades")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.response
  end

  def test_card
    card = Card.new("Ace", "Spades")
    guess = Guess.new("10 of Hearts", card)
    assert_equal card, guess.card
  end

  def test_correct?
    card = Card.new("Ace", "Spades")
    guess = Guess.new("10 of Hearts", card)
    assert_equal false, guess.correct?
  end

  def test_feedback
    card = Card.new("Ace", "Spades")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Incorrect!", guess.feedback
  end
end
