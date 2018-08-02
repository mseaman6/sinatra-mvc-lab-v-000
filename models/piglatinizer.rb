require 'pry'

class PigLatinizer
  attr_reader :words

  def initialize(text)
    words = text.downcase.split(" ")
    words = words.collect {|word| word.gsub(/[^a-z]/, '')}
  end

  def piglatin
    @new_text = words.collect do |word|
      if /[aeiou]/.match(word[0])
        word + "way"
      elsif /[^aeiou]/.match(word[0]) && /[^aeiou]/.match(word[1])
        cut_letters = word.slice!(0,2)
        word + cut_letters + "ay"
      else
        cut_letters = word.slice!(0,1)
        word + cut_letters + "ay"
      end
    end
    @new_text.join(' ')
  end

end
