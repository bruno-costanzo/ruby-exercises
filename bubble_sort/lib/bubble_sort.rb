# frozen_string_literal: true

# Bubble Sort - Class -> Performs a bubble sort
class BubbleSort
  def initialize(numbers)
    @numbers = numbers
    @swapping = true
  end

  def sort
    iterations_count = @numbers.size - 1

    while @swapping
      @swapping = false

      iterations_count.times do |index|
        next unless @numbers[index] > @numbers[index + 1]

        @numbers[index], @numbers[index + 1] = @numbers[index + 1], @numbers[index]

        @swapping = true
      end

      iterations_count -= 1
    end

    @numbers
  end
end
