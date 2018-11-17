# Given an array A of non-negative integers, half of the integers in A are odd, and half of the integers are even.
#
# Sort the array so that whenever A[i] is odd, i is odd; and whenever A[i] is even, i is even.
#
# You may return any answer array that satisfies this condition.
#
#
#
# Example 1:
#
# Input: [4,2,5,7]
# Output: [4,5,2,7]
# Explanation: [4,7,2,5], [2,5,4,7], [2,7,4,5] would also have been accepted.
#
#
# Note:
#
# 2 <= A.length <= 20000
# A.length % 2 == 0
# 0 <= A[i] <= 1000

# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity_ii(a)
  return a if a.length < 2

  even, odd = 0, 1

  while even < a.length && odd < a.length
    if a[even] % 2 == 0
      even += 2
    else
      a[even], a[odd] = a[odd], a[even]
      odd += 2
    end
  end

  a
end

# Time complexity = O(n), where n = a.length 
# Space complexity = O(1)
