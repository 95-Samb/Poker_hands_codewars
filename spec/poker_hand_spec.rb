require_relative "../poker_hand.rb"

describe PokerHand do

  it "returns win when compared" do
    hand = PokerHand.new("2D 3S 5H 7C 9D")
    expect(hand.compare_with("2D 3S 5H 7C 8D")).to eq("Win")
  end
  it "returns loss when compared" do
    hand = PokerHand.new("2D 3S 5H 7C 9D")
    expect(hand.compare_with("2D 3S 5H 7C 10D")).to eq("Loss")
  end
end
