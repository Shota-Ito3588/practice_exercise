# ・次のような二次元配列を作成しましょう。
# 省略
# ・この配列のarr2d[0]の各要素とarr2d[1]の各要素を足した値をarr2d[2]に格納していきましょう。
# 上記のような配列であれば以下のようになればOKです。

# arr2d = [
#     [4, 9, 10, 3],
#     [6, 7, 13, 8],
#     [10, 16, 23, 11]
# ]

# arr2d[2][0]にはarr[0][0]とarr[1][0]を足した値が代入される
# arr2d[2][1]にはarr[0][1]とarr[1][1]を足した値が代入される...以下略

# ・arr2d[2]の内容を出力して確認しましょう

# arr1[0][0]とarr1[1][0]を足した値をarr1[2][0]に代入
# arr1[0][1]とarr1[1][1]を足した値をarr1[2][1]に代入
# arr1[0][2]とarr1[1][2]を足した値をarr1[2][2]に代入
# arr1[0][3]とarr1[1][3]を足した値をarr1[2][3]に代入
# fo文を使って実装する

arr1 = [
  [4, 9, 10, 3],
  [6, 7, 13, 8],
  [],
]
i = 0

for arr1[2][i] in 0..3
  arr1[2][i] = arr1[0][i] + arr1[1][i]
  i += 1
end
p arr1
