# frozen_string_literal: true

require_relative '../lib/stock_piper'

describe StockPiper do
  subject(:max_profitable_days) { described_class.new(prices).max_profitable_days }

  context 'with a profitable list of prices' do
    let(:prices) { [17, 3, 6, 9, 15, 8, 6, 1, 10] }

    it 'returns the correct value' do
      expect(max_profitable_days).to eql([1, 4])
    end
  end

  context 'with a non profitable list of prices' do
    let(:prices) { [10, 9, 8, 7, 4, 2] }

    it 'returns the correct value' do
      expect(max_profitable_days).to eql([nil, nil])
    end
  end
end
