// All DNA is composed of a series of nucleotides abbreviated as A, C, G,
// and T, for example: "ACGAATTCCG". When studying DNA, it is sometimes
// useful to identify repeated sequences within the DNA.
//
// Write a function to find all the 10-letter-long sequences (substrings)
// that occur more than once in a DNA molecule.
//
// For example,
//
// Given s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT",
//
// Return:
// ["AAAAACCCCC", "CCCCCAAAAA"].

var findRepeatedDnaSequences = s => {
  let sequences = {};

  for (let i = 0; i < s.length - 9; i++) {
    let seq = s.slice(i, i + 10);

    if (sequences[seq]) {
      sequences[seq] += 1;
    } else {
      sequences[seq] = 1;
    }
  }

  return Object.keys(sequences).filter(k => sequences[k] > 1);
};
