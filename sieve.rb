class Sieve
  attr_reader :list

  def initialize(value)
    @list = (2..value).to_a
  end

  def primes
    list.each do |prime|
      list.reject! { |num| (num != prime) && (num % prime == 0) }
    end
    list
  end
end
