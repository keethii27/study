"問題3　誕生日からパータンを出力させる"
# ・2人分の誕生日(YYMMDDの形式)を入力できるようにする
# ・2人の誕生日の合計値を365で割った余りの値を算出
# ・算出した値を
# 0〜１００(パターン１)
# １０１〜２００(パターン２)
# ２０１〜３００(パターン３)
# それ以外の値(パターン４)
# という場合分けをしてパターンを出力させる
# 例
# 20000101を入力
# 20001231を入力
# あまりは252
# 「あなたはパターン３です」と出力

"回答"

birthday1 = gets.to_i
birthday2 = gets.to_i
value = 0
calculation = (birthday1 + birthday2)%365


  if (0..100).include?(calculation)
    value = 1
  elsif (101..200).include?(calculation)
    value = 2
  elsif (201..300).include?(calculation)
    value = 3
  else
    value =4
  end


puts "#{birthday1}" + "を入力"
puts "#{birthday2}" + "を入力"
puts "あまりは" + "#{calculation}"
puts "「あなたはパターン" + "#{value} " + "です"
