# International Morse Code defines a standard encoding where each letter is mapped to a
# series of dots and dashes, as follows: "a" maps to ".-", "b" maps to "-...", "c"
# maps to "-.-.", and so on.
#
# For convenience, the full table for the 26 letters of the English alphabet is given below:
#
# [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
# Now, given a list of words, each word can be written as a concatenation of the Morse code
# of each letter. For example, "cba" can be written as "-.-..--...", (which is the
# concatenation "-.-." + "-..." + ".-"). We'll call such a concatenation,
# the transformation of a word.
#
# Return the number of different transformations among all words we have.
#
# Example:
# Input: words = ["gin", "zen", "gig", "msg"]
# Output: 2
# Explanation:
# The transformation of each word is:
# "gin" -> "--...-."
# "zen" -> "--...-."
# "gig" -> "--...--."
# "msg" -> "--...--."
#
# There are 2 different transformations, "--...-." and "--...--.".
# Note:
#
# The length of words will be at most 100.
# Each words[i] will have length in range [1, 12].
# words[i] will only consist of lowercase letters.

# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  morse_letters = [".-","-...","-.-.","-..",".","..-.","--.","....",
    "..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...",
    "-","..-","...-",".--","-..-","-.--","--.."
  ]

  letters = ('a'..'z').to_a

  morse_mapping = {}

  letters.each_with_index do |letter, idx|
    morse_mapping[letter] = morse_letters[idx]
  end

  seen_words = Hash.new { |h, k| h[k] = 0 }

  words.each do |word|
    morse_word = word.chars.map { |letter| morse_mapping[letter] }.join
    seen_words[morse_word] += 1
  end

  seen_words.keys.length
end

# Time Complexity = O(n * m), where n = words.length and m = word.length, which is the longest word in words
# Space Complexity = O(n), where n = words.length
