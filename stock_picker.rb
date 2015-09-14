def stock_picker(prices)
  max_profit = 0
  indx1 = 0
  indx2 = 1
  min_index = 0
  max_index = 0
  prices[0...-1].each_with_index do |price1, index1|
    prices[index1...-1].each_with_index do |price2, index2|
      if price2 - price1 > max_profit
        max_profit = price2 - price1
        min_index = index1
        max_index = index2 + index1
      end
    end
  end
  puts "#{min_index}, #{max_index}"
end

p stock_picker([25,2,4,5,8,3,15,1])