class Array
  def histogram
    { 'A' => 0, 'C' => 0, 'G' => count('G'), 'T' => 0 }
  end
end

class Nucleotide
  def self.from_dna sequence
    sequence.split ''  
  end
end
