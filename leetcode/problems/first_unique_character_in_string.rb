# Given a string, find the first non-repeating character
# in it and return it's index. If it doesn't exist, return -1.
#
# Examples:
#
# s = "leetcode"
# return 0.
#
# s = "loveleetcode",
# return 2.
# Note: You may assume the string contain only lowercase letters.

# param {String} s
# return {Integer}

def first_uniq_char(s)
  seen = Hash.new { |h, k| h[k] = [] }

  (0...s.length).each do |i|
    seen[s[i]] << i
  end

  letter_indexes = seen.values.select { |v| v.length == 1 }

  if letter_indexes.empty?
    -1
  else
    letter_indexes.flatten.sort.first
  end
end

# Time Complexity - O(nlogn)
# Space Complexity - O(n)
