def stock_picker(prices)
    profit_max = 0
    pair = ""
    prices.each_with_index do |n1, i|
        prices.each_with_index do |n2, j|
            profit = n2 - n1

            if profit_max < profit && j > i
                profit_max = profit
                pair = [i, j]
            end
        end
    end
    p pair
    pair
end
stock_picker([17,3,6,9,15,8,6,1,10])