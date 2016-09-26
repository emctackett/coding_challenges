class Anagram
  attr_reader :given_word

  def initialize(given_word)
    @given_word = given_word
  end

  def match(str_arr)
    str_arr.select { |word| !identical?(word) && anagram?(word) }
  end

  def identical?(word)
    word.downcase == given_word.downcase
  end

  def anagram?(word)
    word.downcase.chars.sort == given_word.downcase.chars.sort
  end
end
