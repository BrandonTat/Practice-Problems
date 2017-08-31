# Given two strings s and t, determine if they are isomorphic.
#
# Two strings are isomorphic if the characters in s can be
# replaced to get t.
#
# All occurrences of a character must be replaced with another
# character while preserving the order of characters. No two
# characters may map to the same character but a character may
# map to itself.
#
# For example,
#   Given "egg", "add", return true.
#
#   Given "foo", "bar", return false.
#
#   Given "paper", "title", return true.
#
# Note:
#   You may assume both s and t have the same length.

# param {String} s
# param {String} t
# return {Boolean}

def is_isomorphic(s, t)
  t_count = {}
  s_count = {}

  (0...s.length).each do |i|
    letter = s[i]

    if s_count[letter]
      s_count[letter] << i
    else
      s_count[letter] = [i]
    end
  end

  (0...t.length).each do |i|
    letter = t[i]

    if t_count[letter]
      t_count[letter] << i
    else
      t_count[letter] = [i]
    end
  end

  t_values = t_count.values.sort
  s_values = s_count.values.sort

  t_values == s_values
end

# Time Complexity - O(nlogn)
# Space Complexity - O(s+t)
