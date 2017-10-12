# Given an array with n integers, your task is to check if it could
# become non-decreasing by modifying at most 1 element.
#
# We define an array is non-decreasing if array[i] <= array[i + 1]
# holds for every i (1 <= i < n).
#
# Example 1:
# Input: [4,2,3]
# Output: True
# Explanation: You could modify the first
# 4
#  to
# 1
#  to get a non-decreasing array.
# Example 2:
# Input: [4,2,1]
# Output: False
# Explanation: You can't get a non-decreasing array by modify at
#   most one element.
# Note: The n belongs to [1, 10,000].

# param {Integer[]} nums
# return {Boolean}

def check_possibility(nums)
  modify_count = 0

  (1...nums.length).each do |i|
    if nums[i] < nums[i - 1]
      modify_count += 1

      if i - 2 < 0 || nums[i - 2] <= nums[i]
        nums[i - 1] = nums[i]
      else
        nums[i] = nums[i - 1]
      end
    end
  end

  modify_count < 2
end

# Time Complexity - O(n)
# Space Complexity - O(1)
