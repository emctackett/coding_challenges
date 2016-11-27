class Series
  attr_reader :digits

  def initialize(digits)
    @digits = digits.chars.map(&:to_i)
  end

  def slices(n)
    raise ArgumentError, 'n greater than string size' if n > digits.size
    result = []
    digits.each_cons(n) { |chunk| result << chunk }
    result
  end
end
