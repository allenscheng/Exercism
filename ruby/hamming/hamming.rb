class Hamming
  def self.compute(dna1, dna2)
    non_match = 0
    if (dna1 === "" || dna2 === "") || (dna1 === dna2)
      return 0
    elsif (dna1.length > dna2.length) || (dna2.length > dna1.length)
      raise ArgumentError
    else
      index = 0;
      dna1.length.times do 
        if dna1[index] != dna2[index]
          non_match += 1
        end
        index += 1
      end
      return non_match 
    end
  end
end