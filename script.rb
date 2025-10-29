def stock_picker(stocks)
  difference = 0
  buy = 0
  sell = 0
  stocks.each do |stock|
    for i in stocks.index(stock)..(stocks.length - 1)
      if stocks[i] - stock > difference
        buy = stocks.index(stock)
        sell = stocks.index(stocks[i])
        difference = stocks[i] - stock
      end
    end
  end

  p [buy, sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])