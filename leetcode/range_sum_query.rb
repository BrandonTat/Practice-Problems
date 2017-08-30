# Given an integer array nums, find the sum of the
# elements between indices i and j (i ≤ j), inclusive.
#
# The update(i, val) function modifies nums by
# updating the element at index i to val.
#
# Example:
# Given nums = [1, 3, 5]
#
#   sumRange(0, 2) -> 9
#   update(1, 2)
#   sumRange(0, 2) -> 8
#
# Note:
#   The array is only modifiable by the update function.
#   You may assume the number of calls to update and sumRange function is distributed evenly.

class NumArray

  def initialize(nums)
    @nums = nums
  end

  def update(i, val)
    @nums[i] = val
  end

  def sum_range(i, j)
    @nums[i..j].inject(:+)
  end

end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# obj.update(i,val)
# param_2 = obj.sum_range(i,j)
