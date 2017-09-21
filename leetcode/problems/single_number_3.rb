# Given an array of numbers nums, in which exactly two elements
# appear only once and all the other elements appear exactly twice.
# Find the two elements that appear only once.
#
# For example:
#
# Given nums = [1, 2, 1, 3, 2, 5], return [3, 5].
#
# Note:
# The order of the result is not important. So in the above
#  example, [5, 3] is also correct.
# Your algorithm should run in linear runtime complexity.
#   Could you implement it using only constant space complexity?

# param {Integer[]} nums
# return {Integer[]}

def single_number(nums)
  seen = {}

  nums.each do |num|
    if seen[num]
      seen[num] += 1
    else
      seen[num] = 1
    end
  end

  seen.keys.select { |k| seen[k] == 1 }
end

# Time Complexity - O(n)
# Space Complexity - O(n)
