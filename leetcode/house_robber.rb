# You are a professional robber planning to rob houses along a street.
# Each house has a certain amount of money stashed, the only constraint
# stopping you from robbing each of them is that adjacent houses have
# security system connected and it will automatically contact the police
# if two adjacent houses were broken into on the same night.
#
# Given a list of non-negative integers representing the amount of money
# of each house, determine the maximum amount of money you can rob
# tonight without alerting the police.

# param {Integer[]} nums
# return {Integer}

def rob(nums)
  rob_house = 0
  dont_rob = 0

  nums.each do |num|
    temp = rob_house
    rob_house = dont_rob + num
    dont_rob = [temp, dont_rob].max
  end

  [rob_house, dont_rob].max
end

# Time Complexity - O(n)
# Space Complexity - O(1)
