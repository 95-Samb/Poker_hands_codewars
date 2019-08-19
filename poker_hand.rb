class PokerHand

  def initialize(hand)
    @hand = hand

  end

  # def compare_with(other_hand)

  # end

  def identify
    hand_array = @hand.split(" ")
    high_card = hand_array.max_by {|card| card.to_i}
    "High card #{high_card.to_i}"
  end

end
