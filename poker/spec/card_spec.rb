require 'rspec'
require 'card'

RSpec.describe Card do
  subject(:card){Card.new(:heart,"10")}
  describe "#initialize" do
    it "set suit to given suit" do
      expect(card.suit).to eq(:heart)
    end

    it "sets value to given value" do
      expect(card.value).to eq("10")
    end
  end


end
