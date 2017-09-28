# Given a sorted array and a target value, return the index if the
# target is found. If not, return the index where it would be if
# it were inserted in order.
#
# You may assume no duplicates in the array.
#
# Here are few examples.
# [1,3,5,6], 5 → 2
# [1,3,5,6], 2 → 1
# [1,3,5,6], 7 → 4
# [1,3,5,6], 0 → 0

# param {Integer[]} nums
# param {Integer} target
# return {Integer}

def search_insert(nums, target)
  high = nums.length - 1
  low = 0

  while low <= high
    mid = low + (high - low) / 2

    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end

  low
end

# Time Complexity - O(log n)
# Space Complexity - O(1)
