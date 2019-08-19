require_relative "../poker_hand.rb"

describe PokerHand do
  it "identifies high card 9" do
    hand = PokerHand.new("2D 3S 5H 7C 9D")
    expect(hand.identify).to eq("High card 9")
  end
  it "identifies high card 10" do
    hand = PokerHand.new("2D 3S 5H 7C 10D")
    expect(hand.identify).to eq("High card 10")
  end



end
