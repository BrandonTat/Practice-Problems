# We are given two sentences A and B.  (A sentence is a string of space separated words.
# Each word consists only of lowercase letters.)
#
# A word is uncommon if it appears exactly once in one of the sentences, and does
# not appear in the other sentence.
#
# Return a list of all uncommon words.
#
# You may return the list in any order.
#
# Example 1:
#
# Input: A = "this apple is sweet", B = "this apple is sour"
# Output: ["sweet","sour"]
# Example 2:
#
# Input: A = "apple apple", B = "banana"
# Output: ["banana"]
#
#
# Note:
#
# 0 <= A.length <= 200
# 0 <= B.length <= 200
# A and B both contain only spaces and lowercase letters.

# @param {String} a
# @param {String} b
# @return {String[]}
def uncommon_from_sentences(a, b)
  word_count = Hash.new { |h, k| h[k] = 0 }

  a.split(' ').each do |word|
    word_count[word] += 1
  end

  b.split(' ').each do |word|
    word_count[word] += 1
  end

  word_count.keys.select { |key| word_count[key] == 1 }
end

# Time Complexity = O(n), where n = a.length || b.length
# Space Complexity = O(n), where n = a.length || b.length
