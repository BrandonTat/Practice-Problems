# For a non-negative integer X, the array-form of X is an array of its digits in
# left to right order.  For example, if X = 1231, then the array form is [1,2,3,1].
#
# Given the array-form A of a non-negative integer X, return the array-form of
# the integer X+K.
#
# Example 1:
#
# Input: A = [1,2,0,0], K = 34
# Output: [1,2,3,4]
# Explanation: 1200 + 34 = 1234
# Example 2:
#
# Input: A = [2,7,4], K = 181
# Output: [4,5,5]
# Explanation: 274 + 181 = 455
# Example 3:
#
# Input: A = [2,1,5], K = 806
# Output: [1,0,2,1]
# Explanation: 215 + 806 = 1021
# Example 4:
#
# Input: A = [9,9,9,9,9,9,9,9,9,9], K = 1
# Output: [1,0,0,0,0,0,0,0,0,0,0]
# Explanation: 9999999999 + 1 = 10000000000
#
# Note：
#
# 1 <= A.length <= 10000
# 0 <= A[i] <= 9
# 0 <= K <= 10000
# If A.length > 1, then A[0] != 0

# @param {Integer[]} a
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(a, k)
  result = []
  k_array = k.to_s.chars.map(&:to_i)

  a_pointer, k_pointer = a.length - 1, k_array.length - 1
  remainder = 0

  while a_pointer >= 0 || k_pointer >= 0
    if a_pointer >= 0 && k_pointer >= 0
      new_value = a[a_pointer] + k_array[k_pointer] + remainder
    elsif k_pointer >= 0
      new_value = k_array[k_pointer] + remainder
    else
      new_value = a[a_pointer] + remainder
    end

    a_pointer -= 1
    k_pointer -= 1
    remainder = new_value / 10
    result << (new_value % 10)
  end

  result << remainder if remainder > 0
  result.reverse
end

# Time Complexity = O(n), where n = longer of a or k
# Space Complexity = O(n + m), where n = a.length and m = k.length
