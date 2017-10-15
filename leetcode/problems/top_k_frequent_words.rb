# Given a non-empty list of words, return the k most frequent elements.
#
# Your answer should be sorted by frequency from highest to lowest.
# If two words have the same frequency, then the word with the lower
# alphabetical order comes first.
#
# Example 1:
# Input: ["i", "love", "leetcode", "i", "love", "coding"], k = 2
# Output: ["i", "love"]
# Explanation: "i" and "love" are the two most frequent words.
#     Note that "i" comes before "love" due to a lower alphabetical order.
# Example 2:
# Input: ["the", "day", "is", "sunny", "the", "the", "the", "sunny", "is", "is"], k = 4
# Output: ["the", "is", "sunny", "day"]
# Explanation: "the", "is", "sunny" and "day" are the four most frequent words,
#     with the number of occurrence being 4, 3, 2 and 1 respectively.
# Note:
# You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
# Input words contain only lowercase letters.

# param {String[]} words
# param {Integer} k
# return {String[]}

def top_k_frequent(words, k)
  word_freq = Hash.new { |h, k| h[k] = 0 }

  words.each do |word|
    word_freq[word] += 1
  end

  word_freq = word_freq.keys.group_by { |k| word_freq[k] }
  word_freq = word_freq.keys.sort.reverse.map { |k| word_freq[k].sort }

  word_freq.flatten[0...k]
end
