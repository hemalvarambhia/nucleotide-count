class Array
  def histogram
    { 
      'A' => count('A'), 'C' => count('C'), 'G' => count('G'), 
      'T' => count('T') 
    }
  end
end

class Nucleotide
  def self.from_dna sequence
    sequence.split ''  
  end
end
