class Nucleotide
  def self.from_dna sequence
    Sequence.new sequence
  end

  class Sequence
    include Enumerable
  
    def initialize sequence_string
      raise ArgumentError if sequence_string[/[^ACGT]/]

      @sequence = sequence_string.split ''
    end

    def histogram
      { 
        'A' => count('A'), 'C' => count('C'), 'G' => count('G'), 
        'T' => count('T') 
      }
    end

    def each
      @sequence.each { |nucleotide| yield nucleotide }
    end
  end
end
