def picker prices
  buy_sell = [prices[0], 0]
  profit = 0
  best_profit = 0
  prices.each_with_index do |buy_price, index|
    prices.each_with_index do |sell_price, sell_index|
      next if index >= sell_index
      if sell_price >= buy_sell[1]
        buy_sell[1] = sell_price
        profit = sell_price - buy_price
      end
    end
    if profit > best_profit
      buy_sell[0] = buy_price
      best_profit = profit
    end
  end
  buy_sell
end

stocks = [8, 6, 3, 8, 3, 33, 8, 6, 9, 62, 1, 22]
p picker(stocks)