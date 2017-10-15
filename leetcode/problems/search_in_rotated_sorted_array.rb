# Suppose an array sorted in ascending order is rotated at some
# pivot unknown to you beforehand.
#
# (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
#
# You are given a target value to search. If found in the array
# return its index, otherwise return -1.
#
# You may assume no duplicate exists in the array.

# param {Integer[]} nums
# param {Integer} target
# return {Integer}

def search(nums, target)
  l = 0
  r = nums.length - 1

  while l < r
    mid = (l + r) / 2

    if nums[mid] > nums[r]
      l = mid + 1
    else
      r = mid
    end
  end

  rot = l

  l = 0
  r = nums.length - 1

  while l <= r
    mid = (l + r) / 2
    real_mid = (mid + rot) % nums.length

    if nums[real_mid] == target
      return real_mid
    elsif nums[real_mid] < target
      l = mid + 1
    else
      r = mid - 1 
    end
  end

  -1
end
