class PokerHand

  def initialize(hand)
    @hand = hand
    @face_cards = {11 => "Jack", 12 => "Queen",
      13 => "King", 14 => "Ace"}
    @face_letters = {"J" => 11, "Q" => 12,
      "K" => 13, "A" => 14}
  end

  # def compare_with(other_hand)

  # end

  def identify
    hand_array = @hand.split(" ")
    @value_array = []
    @suit_array = []
    hand_array.each do |e|
      if e[1] == "0"
        @value_array.push(e[0..1])
        @suit_array.push(e[2])
      else
      @value_array.push(e[0])
      @suit_array.push(e[1])
      end
    end
    @value_array.map! { |e| e == "J" ? "11" : e  }
    @value_array.map! { |e| e == "Q" ? "12" : e  }
    @value_array.map! { |e| e == "K" ? "13" : e  }
    @value_array.map! { |e| e == "A" ? "14" : e  }
    high_card = @value_array.max_by {|card| card.to_i}
    return "High card #{@face_cards[high_card.to_i]}" if high_card.to_i >= 11
    "High card #{high_card.to_i}"
  end

end
