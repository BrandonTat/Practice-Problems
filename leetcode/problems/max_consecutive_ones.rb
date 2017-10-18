# Given a binary array, find the maximum number of consecutive
# 1s in this array.
#
# Example 1:
# Input: [1,1,0,1,1,1]
# Output: 3
# Explanation: The first two digits or the last three digits are consecutive 1s.
#     The maximum number of consecutive 1s is 3.

# param {Integer[]} nums
# return {Integer}

def find_max_consecutive_ones(nums)
  max = 0
  count = 0

  nums.each do |num|
    if num.zero?
      count = 0
    else
      count += 1
      max = count if count > max
    end
  end

  max
end

# Time Complexity - O(n)
# Space Complexity - O(1)
