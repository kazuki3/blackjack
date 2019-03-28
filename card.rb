# カードクラス
class Card
  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def show
    return "#{@suit} of #{@number}"
  end

  def count
    return @number
  end
end
