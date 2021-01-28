# ■STEP3
# 各教科の合計点数を計算する関数(calcTotalSubject)を作成しましょう。

# 例)
# totalSubject = calcTotalSubject(grades)
# と実行すると

# totalSubjectには以下の内容が代入される。

# totalSubject = {
#     :japanese => 310,
#     :english => 297,
#     :science => 295,
#     :math => 302
# }

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

def calcTotalSubject(grades)
  totalSubject = {
    :japanese => 0,
    :english => 0,
    :science => 0,
    :math => 0,
  }
  for i in 0..(grades.length - 1)
    totalSubject[:japanese] += grades[i][:japanese]
    totalSubject[:english] += grades[i][:english]
    totalSubject[:science] += grades[i][:science]
    totalSubject[:math] += grades[i][:math]
  end
  return totalSubject
end

p calcTotalSubject(grades)
