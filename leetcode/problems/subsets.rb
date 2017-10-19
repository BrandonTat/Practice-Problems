# Given a set of distinct integers, nums, return all possible subsets.
#
# Note: The solution set must not contain duplicate subsets.
#
# For example,
# If nums = [1,2,3], a solution is:
#
# [
#   [3],
#   [1],
#   [2],
#   [1,2,3],
#   [1,3],
#   [2,3],
#   [1,2],
#   []
# ]

# param {Integer[]} nums
# return {Integer[][]}

def subsets(nums)
  return [[]] if nums.empty?

  val = nums[0]
  subs = subsets(drop(1))
  new_subs = subs.map { |sub| sub + [val] }
  subs + new_subs
end

# Time Complexity - O(2**n)
