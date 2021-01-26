# ひし形を作る

# for文を使う

# NG
# p "___*"
# p "__***"
# ...

# 以下のような形
# __*
# _***
# *****

# アンダーバー（空白）を１本ずつ減らしていく
# アスタリスクを２個ずつ増やしていく

# item = "*" # itemに各要素（変数）を代入していく
# sum =
# while sum < 3
#   for i in item # for文を使ってiにitemを順番に代入していく
#     puts(i = i + 2) # iを出力する
#   end # 終了
# end

# 各行に段数に応じた空白を入れていく
# １行目の時は height-i-1,２行目の時 height-i-1... → height-i-1
# 二重ループの計算式を使用する

height = 7
asta = "**"
i = 0
result = "*"
while i < height
  # space_numが４の時に空白が４つ入る、３の時は空白が３つ入る、２の時は空白が２つ入る
  # 計算式をループさせて値に合った空白を出力する
  space_num = height - i - 1
  j = 0
  space = " "
  spaces = ""
  while j < space_num
    spaces = spaces + space
    j += 1
  end
  print spaces
  puts result
  result = result + asta
  i += 1
end
