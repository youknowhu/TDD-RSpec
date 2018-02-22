require 'card'
class Deck
  SUITS = %i(heart diamond club spade).freeze
  VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K).freeze
  attr_reader :deck_of_cards

  def initialize
    @deck_of_cards = fill_deck
  end

  def fill_deck
    cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        cards << Card.new(suit, value)
      end
    end
    cards
  end

  def shuffle
    deck_of_cards.shuffle!
  end
end
