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
    round = Round.new(deck)
    assert_equal round.deck, deck
  end

  def test_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end



  def test_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    guess = Guess.new("3 of Spades", card_1)
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Spades"})
    assert_equal "3 of Spades", round.guesses.first.response
    assert_equal 1, round.guesses.count
    assert_instance_of Guess, round.guesses.first
  end

  def test_guesses_count
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    guess = Guess.new("3 of Spades", card_1)
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Spades"})
    assert_equal 1, round.guesses.count
  end

  def test_guesses_first_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    guess = Guess.new("3 of Spades", card_1)
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Spades"})
    assert_equal "Incorrect!", round.guesses.first.feedback
  end
  #
  def test_number_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    guess = Guess.new("3 of Spades", card_1)
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.number_correct
  end

  def test_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    guess = Guess.new("3 of Spades", card_1)
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Guess, round.record_guess({value: "3", suit: "Hearts"})
  end

  def test_percent_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    guess = Guess.new("3 of Hearts", card_1)
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 100, round.percent_correct
  end
end
