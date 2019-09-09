require_relative "../identify"

describe Identify do

  context "for identifying high cards only" do
    it "identifies high card 9" do
      hand_hash = Identify.new.execute("2D 3S 5H 7C 9D")
      expect(hand_hash).to eq({"High_card" => "9"})
    end
    it "identifies high card 10" do
      hand_hash = Identify.new.execute("2D 3S 5H 7C 10D")
      expect(hand_hash).to eq({"High_card" => "10"})
    end
    it "identifies high card J" do
      hand_hash = Identify.new.execute("2D 3S 5H 7C JD")
      expect(hand_hash).to eq({"High_card" => "Jack"})
    end
    it "identifies high card A" do
      hand_hash = Identify.new.execute("2D 3S 5H 7C AD")
      expect(hand_hash).to eq({"High_card" => "Ace"})
    end
    it "identifies high card non-diamond A" do
      hand_hash = Identify.new.execute("2D 3S 5H 7C AH")
      expect(hand_hash).to eq({"High_card" => "Ace"})
    end
  end


end
