# Given an integer array, find three numbers whose
# product is maximum and output the maximum product.
#
# Example 1:
#   Input: [1,2,3]
#   Output: 6
#
# Example 2:
#   Input: [1,2,3,4]
#   Output: 24
#
# Note:
#   1. The length of the given array will be in range [3,104]
#      and all elements are in the range [-1000, 1000].
#   2. Multiplication of any three numbers in the input
#      won't exceed the range of 32-bit signed integer.

# param {Integer[]} nums
# return {Integer}

def maximum_product(nums)
  sorted_nums = nums.sort

  first_nums = sorted_nums[0..1].inject(:*)
  last_nums = sorted_nums[-3..-2].inject(:*)

  larger = first_nums > last_nums ? first_nums : last_nums

  larger * sorted_nums[-1]
end
