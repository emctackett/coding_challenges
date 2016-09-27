class Scrabble
  attr_reader :word

  def initialize(word = nil)
    @word = word
  end

  def score
    return 0 if word == nil
    sum = 0

    word.chars.each { |char| sum += point_value(char) }
    sum
  end

  def self.score(word)
    new(word).score
  end

  def point_value(char)
    case
    when char =~ /[aeioulnrst]/i then 1
    when char =~ /[dg]/i         then 2
    when char =~ /[bcmp]/i       then 3
    when char =~ /[fhvwy]/i      then 4
    when char =~ /[k]/i          then 5
    when char =~ /[jx]/i         then 8
    when char =~ /[qz]/i         then 10
    else                             0
    end
  end
end

p Scrabble.new('a').score
p Scrabble.score('alacrity')
p Scrabble.new(nil).score
