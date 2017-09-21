# Given a string, your task is to count how
# many palindromic substrings in this string.
#
# The substrings with different start indexes or
# end indexes are counted as different substrings
# even they consist of same characters.
#
# Example 1:
#   Input: "abc"
#   Output: 3
#
#   Explanation: Three palindromic strings: "a", "b", "c".
#
# Example 2:
#   Input: "aaa"
#   Output: 6
#
#   Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".
#
# Note:
#   1. The input string length won't exceed 1000.

# param {String} s
# return {Integer}

def count_substrings(s)
  s_length = s.length
  number_of_palindromes = s_length

  (1...s.length).each do |i|
    #even
    high = i
    low = i - 1

    while high < s_length && low >= 0 && s[high] == s[low]
      number_of_palindromes += 1
      high += 1
      low -= 1
    end

    #odd
    high = i + 1
    low = i - 1
    while high < s_length && low >= 0 && s[high] == s[low]
      number_of_palindromes += 1
      high += 1
      low -= 1
    end
  end

  number_of_palindromes
end
