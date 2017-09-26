# Given a string, sort it in decreasing order based on the
# frequency of characters.
#
# Example 1:
#
# Input:
# "tree"
#
# Output:
# "eert"
#
# Explanation:
# 'e' appears twice while 'r' and 't' both appear once.
# So 'e' must appear before both 'r' and 't'. Therefore "eetr" is also a valid answer.
# Example 2:
#
# Input:
# "cccaaa"
#
# Output:
# "cccaaa"
#
# Explanation:
# Both 'c' and 'a' appear three times, so "aaaccc" is also a valid answer.
# Note that "cacaca" is incorrect, as the same characters must be together.
# Example 3:
#
# Input:
# "Aabb"
#
# Output:
# "bbAa"
#
# Explanation:
# "bbaA" is also a valid answer, but "Aabb" is incorrect.
# Note that 'A' and 'a' are treated as two different characters.

# param {String} s
# return {String}

def frequency_sort(s)
  result = ""
  letter_freq = Hash.new { |h, k| h[k] = 0}

  s.each_char do |c|
    letter_freq[c] += 1
  end

  letters = letter_freq.keys.sort_by { |k| letter_freq[k] }.reverse

  letters.each do |letter|
    result += letter * letter_freq[letter]
  end

  result
end

# Time Complexity - O(nlogn)
# Space Compleixty - O(n)
