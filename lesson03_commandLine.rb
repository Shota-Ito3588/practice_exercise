# ・表の列数、行数をコマンドラインから受け取り、指定された列数、行数だけ表を表示するようにしましょう。
# ・コマンドライン引数に指定される値は正の整数のみが与えられるものとし、
# それ以外の値が入力された場合については考慮しなくてよい。

column = ARGV[0].to_i
line = ARGV[1].to_i
# column = 9 # 縦の列
# line = 9 # 横の行
i = 1

while i <= line
  j = 1
  while j <= column
    result = i * j
    if result <= 9
      print " "
    end
    print result.to_s + "|"
    j += 1
  end
  i += 1
  puts ""
end
