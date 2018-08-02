require 'pry'

class PigLatinizer
  attr_reader :text

  def initialize(text)
    text = text.downcase
    @words = text.split(" ")
  end

  def pig

end
