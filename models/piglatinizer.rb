require 'pry'

class PigLatinizer
  attr_reader :text

  def initialize(text)
    words = text.downcase.split(" ")
    @words_to_alter = words.collect {|word| gsub(/[^a-z]/, '')}
    binding.pry
  end

  def piglatin
    @words_to_alter.collect do |word|
      if /[aeiou]/.match(word[0])
        word + "way"
      elsif word[0]
    end
  end

end
