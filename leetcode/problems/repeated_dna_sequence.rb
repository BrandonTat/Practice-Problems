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
  sequences = Hash.new { |h, k| h[k] = 0 }

  (0...s.length).each do |i|
    subsequence = s[i, 10]
    next if subsequence.length != 10

    sequences[subsequence] += 1
  end

  sequences.keys.select { |k| sequences[k] > 1 }
end

# Time Complexity - O(n)
# Space Complexity - O(n)
