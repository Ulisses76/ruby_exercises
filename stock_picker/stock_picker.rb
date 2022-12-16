def stock_picker(day_prices)
 max_profit = 0
 result = Array.new
  day_prices.each_with_index do |buy, buy_ind|
    day_prices.each_with_index do |sell, sell_ind|
      next if buy_ind >= sell_ind
      profit = sell - buy
      if profit > max_profit 
        max_profit = profit
        result = [buy_ind, sell_ind]
      end
    end
  end
  result
end

p stock_picker([17,3,6,9,15,8,6,1,10])