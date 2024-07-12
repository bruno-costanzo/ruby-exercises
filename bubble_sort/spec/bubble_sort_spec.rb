# frozen_string_literal: true

require_relative '../lib/bubble_sort'

describe BubbleSort do
  subject(:bubble_sort) { described_class.new(numbers).sort }

  context 'with a set of numbers' do
    let(:numbers) { [56, 3, 4, 7, 21, 8, 5, 4, 4567, 3, 1, 3, 78] }

    it 'returns the numbers sorted' do
      expect(bubble_sort).to eql([1, 3, 3, 3, 4, 4, 5, 7, 8, 21, 56, 78, 4567])
    end
  end
end
