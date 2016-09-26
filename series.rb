# Write a program that will take a string of digits and give you all the
# possible consecutive number series of length n in that string.

class Series
  def initialize(string)
    @numbers = string.each_char.map(&:to_i)
  end

  def slices(count)
    raise ArgumentError, 'count is too big.' if count > @numbers.size

    @numbers.each_cons(count).to_a
  end

end

series = Series.new("01234")
p series.slices(3)

second_series = Series.new("01234")
p second_series.slices(2)
