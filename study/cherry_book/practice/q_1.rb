"問題１"
# 以下のような奇数、偶数判定のメソッドを作ってください。
# ・ターミナルに文字の入力を受け付ける。
# ・任意の数字を入力し、「奇数は○個、偶数は○個」
# という結果を出力させる
# 例）
# 1234567  を入力
# ↓
# 「奇数は4個、偶数は3個」

"回答"
# a = gets.chomp!
# p b = a.split(//)
#
# k = []
# g = []
#
# b.each  do |c|
#
#   if c.to_i % 2 == 1
#     k << c
#   elsif c.to_i % 2 == 0
#     g << c
#   else
#     puts "数字のみを入力してください"
#   end
#
# end
#
# puts "奇数は" + k.count.to_s + "、" + "偶数は" + g.count.to_s



"模範解答"
flg = true
odd = 0
even = 0
while flg
 numbers = gets.chomp!
 if numbers =~ /^[0-9]+$/
   numbers = numbers.split("")
   numbers.each do |number|
     if number.to_i.odd?
       odd += 1
     else
       even += 1
     end
   end
   flg = false
 else
   p "入力できるのは半角数字のみです"
 end

end

p "奇数の個数は#{odd},偶数の個数は#{even}です"
