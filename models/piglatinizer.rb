require 'pry'

class PigLatinizer

  def piglatinize(text)
    words_array = text.split(" ")
    words_array_clean = words_array.collect {|word| word.gsub(/[^a-zA-z]/, '')}
    pl_words = words_array_clean.collect do |word|
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
    pl_words.join(' ')
  end

end
