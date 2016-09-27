class PerfectNumber
  def self.classify(number)
    raise "invalid number" if number < 0

    case
    when sum_of_factors(number) == number
      'perfect'
    when sum_of_factors(number) < number
      'deficient'
    when sum_of_factors(number) > number
      'abundant'
    end
  end

  private

  def self.sum_of_factors(number)
    factors = []

    1.upto(number - 1) do |n|
      factors << n if number % n == 0
    end
    factors.inject(:+)
  end
end
