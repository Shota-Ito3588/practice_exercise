# ■STEP2
# 次のようなハッシュの配列を作成します。
# 以下省略

# 各データの意味はSTEP1と同じです。

# ・各商品の消費税を計算し、:taxに代入しましょう。
# 消費税の計算方法は「単価*個数*0.1」とします。

# ・各商品の販売合計金額(消費税含む)を計算し、:total_priceに代入しましょう。
# 販売合計金額は「単価*個数+消費税」とします。

# ・すべての商品の合計個数、消費税合計、合計金額を計算して表示しましょう。

# ---------------------------------------------------------------

# 仕様
# "eraser"の消費税を「単価*個数*0.1」で計算しtaxに代入
# "pencil"の消費税を「単価*個数*0.1」で計算しtaxに代入
# "ruler" "notebook" "pen"も同じように計算しtaxに代入

# "eraser"の消費税込み合計金額を「単価*個数+消費税」で計算しtotal_priceに代入
# "pencil"の消費税込み合計金額を「単価*個数+消費税」で計算しtotal_priceに代入
# "ruler" "notebook" "pen"も同じように計算しtotal_priceに代入

# 商品の合計個数、消費税合計、合計金額を計算して表示

sale_products = [
  {
    :item_name => "eraser",
    :unit_price => 100,
    :quantity => 3,
    :tax => 0,
    :total_price => 0,
  },
  {
    :item_name => "pencil",
    :unit_price => 50,
    :quantity => 12,
    :tax => 0,
    :total_price => 0,
  },
  {
    :item_name => "ruler",
    :unit_price => 200,
    :quantity => 1,
    :tax => 0,
    :total_price => 0,
  },
  {
    :item_name => "notebook",
    :unit_price => 120,
    :quantity => 5,
    :tax => 0,
    :total_price => 0,
  },
  {
    :item_name => "pen",
    :unit_price => 100,
    :quantity => 3,
    :tax => 0,
    :total_price => 0,
  },
]
total_tax = 0
total_price = 0
total_quantity = 0

for i in 0..(sale_products.length - 1)
  sale_products[i][:tax] = (sale_products[i][:unit_price] * sale_products[i][:quantity] * 0.1).floor
  sale_products[i][:total_price] = (sale_products[i][:unit_price] * sale_products[i][:quantity] + sale_products[i][:tax]).floor
  total_tax += sale_products[i][:tax]
  total_quantity += sale_products[i][:quantity]
  total_price += sale_products[i][:total_price]
end

p total_tax, total_quantity, total_price
