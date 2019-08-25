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
  it "identifies high card J" do
    hand = PokerHand.new("2D 3S 5H 7C JD")
    expect(hand.identify).to eq("High card Jack")
  end
  it "identifies high card A" do
    hand = PokerHand.new("2D 3S 5H 7C AD")
    expect(hand.identify).to eq("High card Ace")
  end
  it "identifies high card non-diamond A" do
    hand = PokerHand.new("2D 3S 5H 7C AH")
    expect(hand.identify).to eq("High card Ace")
  end



end
