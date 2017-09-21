# All DNA is composed of a series of nucleotides
# abbreviated as A, C, G, and T, for example:
# "ACGAATTCCG". When studying DNA, it is sometimes
# useful to identify repeated sequences within the DNA.
#
# Write a function to find all the 10-letter-long sequences
# (substrings) that occur more than once in a DNA molecule.
#
# Example:
#   Input: "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT",
#   Output: ["AAAAACCCCC", "CCCCCAAAAA"].

# param {String} S
# return {String[]}

def find_repeated_dna_sequences(s)
  repeated_sequences = {}

  (0...s.length - 10).step.each do |i|
    sequence = s.slice(i, 10)
    if repeated_sequences[sequence]
      repeated_sequences[sequence] += 1
    else
      repeated_sequences[sequence] = 1
    end
  end

  repeated_sequences.keys.select do |sequence|
    repeated_sequences[sequence] > 1
  end
end
