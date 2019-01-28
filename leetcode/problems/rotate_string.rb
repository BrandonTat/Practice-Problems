# We are given two strings, A and B.
#
# A shift on A consists of taking string A and moving the leftmost character to
# the rightmost position. For example, if A = 'abcde', then it will be 'bcdea'
# after one shift on A. Return True if and only if A can become B after some
# number of shifts on A.
#
# Example 1:
# Input: A = 'abcde', B = 'cdeab'
# Output: true
#
# Example 2:
# Input: A = 'abcde', B = 'abced'
# Output: false
# Note:
#
# A and B will have length at most 100.

# @param {String} a
# @param {String} b
# @return {Boolean}
def rotate_string(a, b)
  return a.length == b.length && (a + a).include?(b)
end

# Time Complexity = O(n^2), where n = a.length
# Space Complexity = O(n), where n = a.length
