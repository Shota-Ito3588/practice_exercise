# 時間に合わせた挨拶を表示する。
# 1.変数hourを用意する。
# 2.変数hourには任意の整数「0～23」を代入する。
# 3.変数hourの値に応じて以下のように処理をする。
#     ・値が6～11であれば「おはようございます。」と表示する。
#     ・値が12～18であれば「こんにちは。」と表示する。
#     ・値が19～23、あるいは0～5であれば「こんばんは。」と表示する。

# ※できるだけif、elseif、elseの記述数が少なくなるように記述してください。

hour = 2

if hour >= 6 && hour <= 11
  print "Good morning!"
elsif hour >= 12 && hour <= 18
  print "Hello!"
else
  print "Good evening!"
end
