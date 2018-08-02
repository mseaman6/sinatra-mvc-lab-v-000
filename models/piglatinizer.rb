require 'pry'

class PigLatinizer
  attr_reader :words

  def initialize(text)
    split_words = text.split(" ")
    @words = split_words.collect {|word| word.gsub(/[^a-zA-z]/, '')}
  end

  def piglatin(words)
    @new_text = words.collect do |word|
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
