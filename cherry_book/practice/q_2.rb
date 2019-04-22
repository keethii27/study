"問題２　ピラミッドの作成"
# ・ターミナルに文字を入力できるようにする
# ・入力した文字でピラミッドの形で出力させる
# 例）
# saito　を入力
#
# 結果
#      s
#     s a
#    s a i
#   s a i t
#  s a i t o

"回答"
# name = gets.chomp!
# count = 0
# i=0
#
# 1.upto(name.size) do |x|
#   print " " * (name.size-x)
#     name.split("").each do |a|
#         if i <= count
#           print ("#{a}") + " "
#           i += 1
#         end
#     end
#   i = 0
#   count += 1
#   puts ""
# end


"模範回答"
words = gets.chomp!
pyramid = []

words.split("").each_with_index do |word, index|
  unless index == 0
    pyramid << " " + word
  else
    pyramid << word
  end
  puts pyramid.join.center(words.length*2)
end
