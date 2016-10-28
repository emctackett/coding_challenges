class Trinary
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 unless number.chars.all? {|n| ('012').include?(n) }

    digits = number.chars.map(&:to_i)
    exp = (0..digits.size - 1).to_a.reverse
    digits.map.with_index { |n, idx| n*3**exp[idx] }.inject(:+)
  end
end
