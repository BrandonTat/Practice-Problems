# Given an unsorted array of integers, find the length of longest
# continuous increasing subsequence.
#
# Example 1:
# Input: [1,3,5,4,7]
# Output: 3
# Explanation: The longest continuous increasing subsequence is
#   [1,3,5], its length is 3.
# Even though [1,3,5,7] is also an increasing subsequence, it's
#   not a continuous one where 5 and 7 are separated by 4.
#
# Example 2:
# Input: [2,2,2,2,2]
# Output: 1
# Explanation: The longest continuous increasing subsequence is [2],
#   its length is 1.
# Note: Length of the array will not exceed 10,000.

# param {Integer[]} nums
# return {Integer}

def find_length_of_lcis(nums)
  max, cur = 0, 0

  (0...nums.length).each do |i|
    if i.zero? || nums[i] > nums[i - 1]
      cur += 1
      max = [max, cur].max
    else
      cur = 1
    end
  end

  max
end

# Time Complexity - O(n)
# Space Complexity - O(1)
