require 'rspec'
require 'deck'

RSpec.describe Deck do
  subject(:deck){Deck.new}
  let(:card){double("Card")}
  describe "#initialize" do
    it "creates an array of 52 cards" do
      expect(deck.deck_of_cards.length).to eq(52)
    end
    it "cards array contains Card objects" do
      expect(deck.deck_of_cards[0]).to be_an_instance_of(Card)
    end
  end

  describe "#shuffle" do
    it "randomly sorts 52 cards in an array" do
      shuffled_deck = deck.shuffle
      expect(shuffled_deck).to_not eq(deck)
    end
  end
end
