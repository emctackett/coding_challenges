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
    (1...number).select { |n| number % n == 0 }.inject(:+)
  end
end
