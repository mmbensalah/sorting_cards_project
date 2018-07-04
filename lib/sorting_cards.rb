class Card
  attr_reader :value, :suit
  
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def put_together
    "#{@value} of #{@suit}"
  end

end
