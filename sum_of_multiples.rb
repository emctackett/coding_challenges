require 'pry'

class SumOfMultiples
  def self.to(limit, multiples = [3, 5])
     (0...limit).select do |number|
      multiples.any? { |multiple| number % multiple == 0 }
    end.reduce(:+)
  end

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(limit)
    self.class.to(limit, @multiples)
  end
end

p sum = SumOfMultiples.to(100)

p sum = SumOfMultiples.new(4, 6).to(15) # 30

p sum = SumOfMultiples.new(7, 13, 17).to(20) # 51

p sum = SumOfMultiples.new(5, 6, 8).to(150) # 4419
