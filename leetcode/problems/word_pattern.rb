# Given a pattern and a string str, find if str follows the same pattern.
#
# Here follow means a full match, such that there is a bijection
# between a letter in pattern and a non-empty word in str.
#
# Examples:
#   pattern = "abba", str = "dog cat cat dog" should return true.
#   pattern = "abba", str = "dog cat cat fish" should return false.
#   pattern = "aaaa", str = "dog cat cat dog" should return false.
#   pattern = "abba", str = "dog dog dog dog" should return false.
#
# Notes:
#   You may assume pattern contains only lowercase letters, and str
#   contains lowercase letters separated by a single space.

# param {String} pattern
# param {String} str
# return {Boolean}

def word_pattern(pattern, str)
  words = str.split(" ")
  letters = pattern.chars

  return false unless words.size == letters.size

  word_mapping = {}
  letter_mapping = {}

  (0...words.length).each do |i|
    word = words[i]
    letter = letters[i]

    return false if word_mapping.key?(word) && word_mapping[word] != letter
    return false if letter_mapping.key?(letter) && letter_mapping[letter] != word

    word_mapping[word] = letter
    letter_mapping[letter] = word
  end

  true
end

# Time Complexity - O(n^2)
# Space Complexity - O(n)
