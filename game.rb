def janken
  start_shout = "ジャンケン…"
  shout = "ホイ！"
  puts "#{start_shout}"
  jankens = ["グー", "チョキ", "パー"]
  program_select = rand(3)
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_select = gets.to_i


if player_select > 3
	puts "入力された値が無効です"
	return true
elsif player_select == 3
  puts "戦わない"
  return false
end

puts "#{shout}"
puts "____________________"
puts "あなた: #{jankens[player_select]}を出しました"
puts "相手: #{jankens[program_select]}を出しました"
puts "____________________"


if player_select ==  program_select
  start_shout = "あいこで…"
  shout = "ショ！"
  return true
elsif (player_select == 0 && program_select ==1) || (player_select == 1 && program_select ==2) || (player_select == 2 && program_select ==0)
	puts "あなたの勝ちです" 
	$result_janken = "win"
	return attimuite_hoi
else
	puts "負け"
	$result_janken = "lose"
	return attimuite_hoi
end
end

next_game = true
while next_game 
  next_game = janken
end


def attimuite_hoi
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  player_direction = gets.to_i
  if player_direction > 4
    puts "入力された値が無効です"
  end
  puts "ホイ！"
  puts "____________________"
  
  
  directions = ["上", "下" , "左" , "右"]
  program_direction = rand(4)
  
  puts "あなた: #{directions[player_direction]}"
　puts "相手: #{directions[program_direction]}"
　
　if player_direction == program_direction && $result_janken = "win"
　  puts "あなたの勝ちです"
　elsif player_direction == program_direction && $result_janken = "lose"
　  puts "あなたの負けです"
　else
　  puts "終わり"
　end
end

