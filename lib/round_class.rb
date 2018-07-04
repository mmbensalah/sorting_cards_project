
require "./lib/deck_class"
require 'pry'

class Round
attr_reader :deck , :guesses, :hash_to_string

  def initialize(deck)
    @deck = deck
    @guesses = []
    @cards = deck.cards
    @hash_to_string = ""
    @number_correct = []
  end

  def deck
    @deck
  end

  def current_card
    @cards.first
  end

  def record_guess(guess_hash)
    @hash_to_string = "#{guess_hash[:value]} of #{guess_hash[:suit]}"
    new_guess = Guess.new(hash_to_string,current_card)
    @guesses << new_guess
    new_guess
      if new_guess.correct?
        @number_correct << new_guess
      end
    return new_guess
  end

  def guesses_count
    @guesses.count
  end

  def number_correct
        @number_correct.count
  end

  def percent_correct
    @number_correct.count.to_f / @guesses.count.to_f * 100
    # binding.pry
  end

end
