# Given a non-empty array of integers, return the third maximum number
# in this array. If it does not exist, return the maximum number.
# The time complexity must be in O(n).
#
# Example 1:
#   Input: [3, 2, 1]
#   Output: 1
#
#   Explanation: The third maximum is 1.
#
# Example 2:
#   Input: [1, 2]
#   Output: 2
#
#   Explanation: The third maximum does not exist, so the maximum (2) is returned instead.
#
# Example 3:
#   Input: [2, 2, 3, 1]
#   Output: 1
#
#   Explanation: Note that the third maximum here means the third maximum distinct number.
#
# Both numbers with value 2 are both considered as second maximum.

# param {Integer[]} nums
# return {Integer}

def third_max(nums)
  uniq_nums = nums.uniq

  first_greatest = -1.0 / 0.0
  second_greatest = -1.0 / 0.0
  third_greatest = -1.0 / 0.0

  uniq_nums.each do |num|
    if num > first_greatest
      third_greatest = second_greatest
      second_greatest = first_greatest
      first_greatest = num
    elsif num > second_greatest
      third_greatest = second_greatest
      second_greatest = num
    elsif num > third_greatest
      third_greatest = num
    end
  end

  third_greatest == -1.0 / 0.0 ? first_greatest : third_greatest
end

# Time Complexity - O(n)
# Space Complexity - O(1)
