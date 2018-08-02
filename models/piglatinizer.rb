require 'pry'

class PigLatinizer
  attr_reader :text

  def initialize(text)
    words = text.downcase.split(" ")
    words.gsub(/[^a-z]/, '')
    binding.pry
  end

  def piglatin
    
  end

end
