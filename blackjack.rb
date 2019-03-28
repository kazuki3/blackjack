def run(player)
  deck = Deck.new
  deck.shuffle
  player.firstDraw(deck)
  player.showHands
  player.scoreCount

  while true do
    puts "さらにカードを引きますか？[Y/N]"
    puts "あなたの得点: #{player.scoreCount}"
    answer = gets.chomp.to_s
    if answer == "Y"
      player.draw(deck, player)
    elsif answer == "N"
      break
    else
      puts "無効な値です。"
    end
  end

end




puts "ゲームを開始します！"

while true do
  puts "好きな選択肢を選んでください"
  puts "[0]: ゲーム開始\n[1]: 終了"
  i = gets.to_i
  if i == 0
    player = Player.new
    run(player)
  elsif i == 1
    puts "ありがとうございました"
    break
  else
    puts "無効な入力値です"
  end
end
