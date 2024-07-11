# frozen_string_literal: true

class CeasarCipher
  attr_reader :message, :shifter

  def initialize(message, shifter)
    @message = message
    @shifter = shifter
  end

  def translate
    @message.each_char.with_object(String.new(encoding: 'UTF-8')) do |character, translation|
      translation << translate_character(character)
    end
  end

  private

  def translate_character(character)
    case character
    in ('a'..'z') then translator(character, 'a'.ord)
    in ('A'..'Z') then translator(character, 'A'.ord)
    else character end
  end

  def translator(character, base_char_ord)
    ((character.ord - base_char_ord + shifter) % alphabet_count + base_char_ord).chr
  end

  def alphabet_count
    @alphabet_count ||= ('z'.ord - 'a'.ord + 1)
  end
end
