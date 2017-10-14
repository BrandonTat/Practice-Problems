# Given an integer array with all positive numbers and no duplicates,
# find the number of possible combinations that add up to a positive
# integer target.
#
# Example:
#
# nums = [1, 2, 3]
# target = 4
#
# The possible combination ways are:
# (1, 1, 1, 1)
# (1, 1, 2)
# (1, 2, 1)
# (1, 3)
# (2, 1, 1)
# (2, 2)
# (3, 1)
#
# Note that different sequences are counted as different combinations.
#
# Therefore the output is 7.
# Follow up:
# What if negative numbers are allowed in the given array?
# How does it change the problem?
# What limitation we need to add to the question to allow negative numbers?

# param {Integer[]} nums
# param {Integer} target
# return {Integer}

def combination_sum4(nums, target)
  dp = Array.new(target + 1, 0)

  (0..target).each do |targ|
    nums.each do |num|
      if num > targ
        next
      elsif num == targ
        dp[targ] += 1
      else
        dp[targ] += dp[targ - num]
      end
    end
  end

  dp.last
end

# Time Complexity - O(n*m)
# Space Complexity - O(n)
#
# n = target
# m = nums length
