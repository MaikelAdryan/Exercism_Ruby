class Hamming
  def self.compute dna_strand_one, dna_strand_two
    hamming_distance = 0;
    raise ArgumentError if dna_strand_one.length != dna_strand_two.length
    dna_strand_one.chars.each_index{|index|
      if dna_strand_one[index] != dna_strand_two[index]
        hamming_distance += 1
      end
    }
    hamming_distance
  end
end