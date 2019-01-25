# In a array A of size 2N, there are N+1 unique elements, and exactly one of these elements is repeated N times.
#
# Return the element repeated N times.
#
#
# Example 1:
#
# Input: [1,2,3,3]
# Output: 3
# Example 2:
#
# Input: [2,1,2,5,3,2]
# Output: 2
# Example 3:
#
# Input: [5,1,5,2,5,3,5,4]
# Output: 5
#
#
# Note:
#
# 4 <= A.length <= 10000
# 0 <= A[i] < 10000
# A.length is even

# @param {Integer[]} a
# @return {Integer}
def repeated_n_times(a)
  a_count = Hash.new { |h, k| h[k] = 0 }
  n = a.length / 2

  a.each do |el|
    a_count[el] += 1
    return el if a_count[el] > 1
  end
end

# Time Complexity = O(n), where n = a.length
# Space Complexity = O(n), where n = a.length
