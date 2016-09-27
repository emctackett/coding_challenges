# Write a program that can
# calculate the Hamming difference between two DNA strands.

class DNA
  attr_reader :strand1

  def initialize(strand1)
    @strand1 = strand1
  end

  def hamming_distance(strand2)
    result = 0
    index = 0

    while index < strand1.size && index < strand2.size do
      result += 1 if strand1[index] != strand2[index]
      index += 1
    end
    result
  end
end


dna = DNA.new('ACT')
p dna.hamming_distance('GGA') # 3

dna1 = DNA.new('GGACG')
p dna1.hamming_distance('GGTCG') # 1

dna2 = DNA.new('ACCAGGG')
p dna2.hamming_distance('ACTATGG') # 2
