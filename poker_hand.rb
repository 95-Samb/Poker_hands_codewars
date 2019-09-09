require_relative "identify"

class PokerHand

  def initialize(hand)
    @hand = hand
  end

  def compare_with(other_hand)
    hand_hash = Identify.new.execute(@hand)
    other_hand_hash = Identify.new.execute(other_hand)
    if hand_hash["High_card"].to_i > other_hand_hash["High_card"].to_i
      "Win"
    else
      "Loss"
    end
  end
end
