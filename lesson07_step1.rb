# ■STEP1
# ・おつりを計算するプログラム。calcChangeを作成しましょう。
# 関数の仕様は以下の通りとします。

# ・引数は以下の三つ
# buyPrice・・・購入した金額

# payPrice・・・支払われた金額

# arrUnit・・・貨幣及び紙幣の種類

# ・戻り値
# 貨幣及び紙幣の種類とその枚数。
# 貨幣及び紙幣の合計枚数が最も少なくなるように計算すること。

# ・実行例を以下に示す。

# 引数が

# buyPrice = 3453
# payPrice = 5000
# arrUnit = [1,5,10,50,100,500,1000,5000,10000]

# の場合戻り値は

# [
#     [
#         :unit => 1,
#         :quantity => 2
#     ],
#     [
#         :unit => 5,
#         :quantity => 1
#     ],
#     [
#         :unit => 10,
#         :quantity => 4
#     ],
#     [
#         :unit => 50,
#         :quantity => 0
#     ],
#     [
#         :unit => 100,
#         :quantity => 0
#     ],
#     [
#         :unit => 500,
#         :quantity => 1
#     ],
#     [
#         :unit => 1000,
#         :quantity => 1
#     ],
#     [
#         :unit => 5000,
#         :quantity => 0
#     ],
#     [
#         :unit => 10000,
#         :quantity => 0
#     ],
# ]

# となる。

# ※おつりは

# 5000-3453=1547円

# なので、おつりの紙幣及び貨幣の枚数が一番少ない組み合わせは

# 1000円が1
# 500円が1
# 10円が4
# 5円が1
# 1円が2

# となる。
# ------------------------------------------------------------

# 仕様
# arrUnitを宣言する
# calcChangeを定義する（３つの引数を入れる）
# 関数でいくつかの条件分岐を行う
# ９つの配列を戻り値とし各unitとquantityを出力

arrUnit =
  [
    [
      :unit => 1,
      :quantity => 2,
    ],
    [
      :unit => 5,
      :quantity => 1,
    ],
    [
      :unit => 10,
      :quantity => 4,
    ],
    [
      :unit => 50,
      :quantity => 0,
    ],
    [
      :unit => 100,
      :quantity => 0,
    ],
    [
      :unit => 500,
      :quantity => 1,
    ],
    [
      :unit => 1000,
      :quantity => 1,
    ],
    [
      :unit => 5000,
      :quantity => 0,
    ],
    [
      :unit => 10000,
      :quantity => 0,
    ],
  ]
buyPrice = 3453
payPrice = 5000
arrUnit = [1, 5, 10, 50, 100, 500, 1000, 5000, 10000]

def calcChange(buyPrice, payPrice, arrUnit)
  change = payPrice - buyPrice
  i = arrUnit.length - 1
  result = []
  while i >= 0
    arr = {
      :unit => arrUnit[i],
      :quantity => 0,
    }
    arr[:quantity] = change / arrUnit[i]
    result[0] = arr
    i -= 1
  end
  return arrUnit
end

calcChange(3453, 5000, [1, 5, 10, 100, 500, 1000, 5000, 10000])
p calcChangeResult(buyPrice, payPrice, arrUnit)
