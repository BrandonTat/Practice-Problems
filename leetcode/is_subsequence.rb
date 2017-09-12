# Given a string s and a string t, check if s is subsequence of t.
#
# You may assume that there is only lower case English
#   letters in both s and t. t is potentially a very long
#   (length ~= 500,000) string, and s is a short string (<=100).
#
# A subsequence of a string is a new string which is formed
# from the original string by deleting some (can be none) of
# the characters without disturbing the relative positions of
# the remaining characters. (ie, "ace" is a subsequence of
# "abcde" while "aec" is not).
#
# Example 1:
# s = "abc", t = "ahbgdc"
#
# Return true.
#
# Example 2:
# s = "axc", t = "ahbgdc"
#
# Return false.

# param {String} s
# param {String} t
# return {Boolean}

def is_subsequence(s, t)
  return true if s.empty?

  count = 0

  t.each_char do |c|
    if c == s[count]
      count += 1
    end

    return true if count == s.length
  end

  false
end

# Time Complexity - O(n)
# Space Complexity - O(1)
