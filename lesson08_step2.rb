# ■STEP2
# 引数として与えられたハッシュの配列のすべての生徒の[:total]を計算して帰す関数(calcTotalAll)を作成しましょう。
# STEP1で作った関数を利用して作成してください。

# 例）
# gradess = calcTotalAll(gradess)
# と実行するとgradessには以下の内容が代入される。

# gradess = [
# 	{
#         :name => "tanaka",
#         :japanese => 95,
#         :english => 85,
#         :science => 83,
#         :math => 89,
#         :total => 352
# 	},
# 	{
#         :name => "saito",
#         :japanese => 75,
#         :english => 72,
#         :science => 68,
#         :math => 63,
#         :total => 278
# 	},
# 	{
#         :name => "yoshida",
#         :japanese => 52,
#         :english => 56,
#         :science => 62,
#         :math => 69,
#         :total => 239
# 	},
# 	{
#         :name => "suzuki",
#         :japanese => 88,
#         :english => 84,
#         :science => 82,
#         :math => 81,
#         :total => 335
# 	}
# ]

grades = [
  {
    :name => "tanaka",
    :japanese => 95,
    :english => 85,
    :science => 83,
    :math => 89,
    :total => 0,
  },
  {
    :name => "saito",
    :japanese => 75,
    :english => 72,
    :science => 68,
    :math => 63,
    :total => 0,
  },
  {
    :name => "yoshida",
    :japanese => 52,
    :english => 56,
    :science => 62,
    :math => 69,
    :total => 0,
  },
  {
    :name => "suzuki",
    :japanese => 88,
    :english => 84,
    :science => 82,
    :math => 81,
    :total => 0,
  },
]

def calcTotalAll(grades)
  grades[:total] += grades[:japanese]
  grades[:total] += grades[:english]
  grades[:total] += grades[:science]
  grades[:total] += grades[:math]
  grades[]
  return grades[:total]
end
