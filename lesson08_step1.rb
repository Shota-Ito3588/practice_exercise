# ■STEP1
# 引数として与えられたハッシュの全教科の合計を求める関数(calcTotal)を作成しましょう。

# 例）
# grades[0][:total] = calcTotal(grades[0])
# と実行するとgrades[0][:total]には「352」が代入される。

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

def calcTotal(grade)
  grade[:total] += grade[:japanese]
  grade[:total] += grade[:english]
  grade[:total] += grade[:science]
  grade[:total] += grade[:math]
  return grade[:total]
end

p calcTotal(grades[0])
p grades[0][:total]
