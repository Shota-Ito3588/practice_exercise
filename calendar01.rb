# 上に月と西暦を表示させる
# 日曜から始まり土曜まで表示させる
# 1〜31までを表示させて土曜になったら改行する。
# 日付は各曜日に合うようにする。
# -mで月を、-yで年を指定できる
# 少なくとも1970年から2100年までは正しく表示される
# 引数を指定しない場合は、今月・今年のカレンダーが表示される
# macに入っているcalコマンドと同じ見た目になっている

require "date"

d = Date.today
i = 0

puts "#{d.year} #{d.month}".center(20)

arr = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
puts arr.join " "

first_day = Date.new(d.year, d.month).wday
p first_day
last_day = Date.new(d.year, d.month, -1).day
p last_day

for i in first_day..last_day
  print i.day
  print " "
  if Date.new(d.year, d.month).wday == 6
    puts "\n"
  end
end
