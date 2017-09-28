# Given a sorted array, remove the duplicates in place such that
# each element appear only once and return the new length.
#
# Do not allocate extra space for another array, you must do this
# in place with constant memory.
#
# For example,
# Given input array nums = [1,1,2],
#
# Your function should return length = 2, with the first two elements
# of nums being 1 and 2 respectively. It doesn't matter what you leave
# beyond the new length.

def remove_duplicates(nums)
  return nums.size if nums.size < 2
  count = 0

  (1...nums.length).each do |i|
    if nums[i] == nums[i - 1]
      count += 1
    else
      nums[i - count] = nums[i]
    end
  end

  nums.length - count
end

# Time Complexity - O(n)
# Space Complexity - O(1)
