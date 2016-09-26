class Sieve
  attr_reader :list

  def initialize(limit)
    @list = (2..limit).to_a
  end

  def primes
    list.each do |prime|
      list.reject! { |num| (num != prime) && (num % prime == 0) }
    end
    list
  end
end

sieve = Sieve.new(10)
p sieve.primes
