# frozen_string_literal: true

# Substring - Class -> Given a phrase and a dictionary, it counts the number of times each entry appears in the phrase
class Substring
  attr_reader :phrase, :dictionary

  def initialize(phrase, dictionary)
    @phrase = phrase
    @dictionary = dictionary
  end

  def counter
    dictionary.each_with_object(Hash.new(0)) do |word, counter_hash|
      occurrences = count_occurrences word

      next unless occurrences.positive?

      counter_hash[word] = occurrences
    end
  end

  def count_occurrences(word)
    splitted_phrase.count { |phrase_word| phrase_word.include?(word) }
  end

  def splitted_phrase
    @splitted_phrase ||= phrase.split
  end
end
