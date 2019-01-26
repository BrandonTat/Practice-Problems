# Given an array A of non-negative integers, return an array consisting
# of all the even elements of A, followed by all the odd elements of A.
#
# You may return any answer array that satisfies this condition.
#
# Example 1:
#
# Input: [3,1,2,4]
# Output: [2,4,3,1]
# The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
#
# Note:
#
# 1 <= A.length <= 5000
# 0 <= A[i] <= 5000

# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity(a)
  even, odd = 0, a.length - 1

  while even < odd
    if a[even].even?
      even += 1
    else
      a[even], a[odd] = a[odd], a[even]
      odd -= 1
    end
  end

  a
end

# Time Complexity = O(n), where n = a.length
# Space Complexity = O(1)
