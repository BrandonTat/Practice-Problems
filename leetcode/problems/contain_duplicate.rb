# Given an array of integers, find if the array contains any duplicates.
# Your function should return true if any value appears at least twice in
# the array, and it should return false if every element is distinct.

# param {Integer[]} nums
# return {Boolean}

def contains_duplicate(nums)
  !(nums.uniq.length == nums.length)
end

# Time Complexity: O(N)
# Space Complexity: O(N)
