require 'pry'

class PigLatinizer
  attr_reader :words

  def initialize(text)
    @words = text
  end

  def piglatin(words = @words)
    words = text.split!(" ")
    words_array = words.collect {|word| word.gsub(/[^a-zA-z]/, '')}
    @new_text = words_array.collect do |word|
      if /[aeiouAEIOU]/.match(word[0])
        word + "way"
      elsif /[^aeiouAEIOU]/.match(word[0]) && /[^aeiou]/.match(word[1]) && /[^aeiou]/.match(word[2])
        cut_letters = word.slice!(0,3)
        word + cut_letters + "ay"
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
