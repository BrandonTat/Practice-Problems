# Given an array of integers, return indices of the two numbers
# such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution,
# and you may not use the same element twice.
#
# Example:
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# param {Integer[]} nums
# param {Integer} target
# return {Integer[]}

def two_sum(nums, target)
  seen = {}

  nums.each_with_index do |num, idx|
    other_idx = seen[target - num]

    if other_idx && other_idx != idx
      return [other_idx, idx]
    end

    seen[num] = idx
  end
end

# Time Complexity - O(n)
# Space Complexity - O(n)
