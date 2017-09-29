# Given an array with n objects colored red, white or blue,
# sort them so that objects of the same color are adjacent,
# with the colors in the order red, white and blue.
#
# Here, we will use the integers 0, 1, and 2 to represent the
# color red, white, and blue respectively.
#
# Note:
# You are not suppose to use the library's sort function for this problem.

# param {Integer[]} nums
# return {Void} Do not return anything, modify nums in-place instead.

def sort_colors(nums)
  red = 0

  (0...nums.length).each do |i|
    if nums[i].zero?
      nums[red], nums[i] = nums[i], nums[red]
      red += 1
    end
  end

  white = red

  (white...nums.length).each do |i|
    if nums[i] == 1
      nums[white], nums[i] = nums[i], nums[white]
      white += 1
    end
  end
end

# Time Complexity - O(n)
# Space Complexity - O(1)
