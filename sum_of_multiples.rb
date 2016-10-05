class SumOfMultiples
  attr_reader :factors

  def initialize(*factors)
    @factors = factors.empty? ? [3, 5] : factors
  end

  def to(limit)
    multiples_sum = 0

    (1...limit).select do |num|
      multiples_sum += num if factors.any? { |fac| num % fac == 0 }
    end
    multiples_sum
  end

  def self.to(limit)
    SumOfMultiples.new.to(limit)
  end
end
