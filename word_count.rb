class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = Hash.new(0)
    clean_phrase.split.each { |word| count[word] += 1 }
    count
  end

  private

  def clean_phrase
    clean_phrase = phrase.downcase.gsub(/[^a-z0-9'\s]/i, ' ').squeeze(' ')
    clean_phrase.gsub(/( '|' )/, ' ')
  end
end
