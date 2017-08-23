# Given an array nums, write a function to move all
# 0's to the end of it while maintaining the relative
# order of the non-zero elements.
#
# For example, given nums = [0, 1, 0, 3, 12], after calling
# your function, nums should be [1, 3, 12, 0, 0].
#
# Note:
#   1. You must do this in-place without making a copy of the array.
#   2. Minimize the total number of operations.

# param {Integer[]} nums
# return {Void}

def move_zeroes(arr)
  return arr if arr.count < 2

  left_most_zero = 0

  (0...arr.length).each do |i|
    if arr[i] != 0
      arr[left_most_zero], arr[i] = arr[i], arr[left_most_zero]
      left_most_zero += 1
    end
  end

  arr
end

# Time Complexity: O(N)
# Space Complexity: O(1)
