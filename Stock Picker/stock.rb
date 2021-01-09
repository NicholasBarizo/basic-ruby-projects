def picker prices
  buy_sell = [0, 0]
  prices.reduce(1) do |best_difference, price|
    buy_sell[1] = prices.reduce(1) { |best_compar, price_compar| price_compar > best_compar ? price_compar : best_compar }
    if best_difference > buy_sell[1] - price
      best_difference
    else
      buy_sell[0] = price
      buy_sell[1] - price
    end
  end
  buy_sell
end
stocks = [8, 6, 3, 8, 3, 14, 8, 6, 9, 6, 5, 11]

p picker(stocks)