# プレイヤークラス
class PlayerBase
  def initialize
    @hands = []
  end

  def draw(deck, player)
    card = deck.drawCard
    @hands.push(card)
    puts "あなたが引いたカードは#{card.show}です"
    if player.scoreCount < 21

    elsif player.scoreCount = 21
      puts "ブラックジャックあなたの勝ちです！"
    else
      puts "バーストしました。あなたの負けです。"
    end
  end

  def showHands
    puts "あなたの手札"
    @hands.each_with_index do |hand, i|
      puts "#{i+1}枚目: #{hand.show}"
    end
  end

end

class Player < PlayerBase
  def scoreCount
    score = 0
    @hands.each do |hand|
      score += hand.count
    end
    return score
  end

  def firstDraw(deck)
    2.times do
      card = deck.drawCard
      @hands.push(card)
    end
  end

end
