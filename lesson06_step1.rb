# ■STEP1
# ・次のようなハッシュを作成します。

# sale_product = {
#     :item_name => "eraser",
#     :unit_price => 100,
#     :quantity => 3,
#     :tax => 0,
#     :total_price => 0
# }

# :item_nameは商品名を表します。
# :unit_priceは単価を表します。
# :quantityは販売個数を表します。
# :taxは消費税を表します。
# :total_priceはその商品の販売合計金額(消費税含む）を表します。

# ・消費税を計算し、:taxに代入しましょう。
# 消費税の計算方法は「単価*個数*0.1」とします。

# ・販売合計金額(消費税含む)を計算し、:total_priceに代入しましょう。
# 販売合計金額は「単価*個数+消費税」とします。

# ・商品名、単価、販売戸数、消費税、販売合計額を出力しましょう。

# ----------------------------------------------------

# 「単価*個数*0.1」をtaxに代入
# 「単価*個数+消費税」を合計金額に代入
# 商品名、単価、販売個数、消費税、販売合計額を出力

sale_product = {
  :item_name => "eraser",
  :unit_price => 100,
  :quantity => 3,
  :tax => 0,
  :total_price => 0,
}

sale_product[:tax] = sale_product[:unit_price] * sale_product[:quantity] * 0.1
sale_product[:total_price] = sale_product[:unit_price] * sale_product[:quantity] + sale_product[:tax]
p sale_product
