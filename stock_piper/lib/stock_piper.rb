# frozen_string_literal: true

# Stock Piper - Class -> Given a set of prices, returns a pair of days for max profits
#  > StockPiper.new([17,3,6,9,15,8,6,1,10]).max_profitable_days
# => [1,4]  for a profit of $15 - $3 == $12
class StockPiper
  attr_reader :prices

  def initialize(prices)
    @prices = prices
    @max_profits = 0
  end

  def max_profitable_days
    prices.each.with_index do |buy_price, buy_day|
      # upcoming days
      prices[buy_day + 1..].each.with_index(buy_day + 1) do |sell_price, sell_day|
        profits = sell_price - buy_price

        next unless profits > @max_profits

        @buy = buy_day
        @sell = sell_day
        @max_profits = profits
      end
    end

    [@buy, @sell]
  end
end
