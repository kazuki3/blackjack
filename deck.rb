# デッキクラス
class Deck
  def initialize
    @cards = []
    build
  end

  def build
    for suit in ["ハート", "スペード", "ダイヤ", "クローバー"] do
      for number in ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] do
        card = Card.new(suit, number)
        @cards << card
      end
    end
  end

  def shuffle
    cards_length =(@cards.count) - 1
    cards_length.step(1,-1) do |i|
      r = rand(i)
      @cards[i] , @cards[r] = @cards[r], @cards[i]
    end
  end

  def drawCard
    @cards.pop
  end
end
