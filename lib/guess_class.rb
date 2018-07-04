require "./lib/sorting_cards"
class Guess
  attr_reader :response, :card
  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    if "#{card.value} of #{card.suit}" == @response
      true
    else
      false
    end
  end

  def feedback
    if "#{card.value} of #{card.suit}" == @response
      "Correct!"
    else
      "Incorrect!"
    end
  end



end
