# Given a non-empty array of non-negative integers nums, the degree of
# this array is defined as the maximum frequency of any one of its elements.
#
# Your task is to find the smallest possible length of a (contiguous)
# subarray of nums, that has the same degree as nums.
#
# Example 1:
# Input: [1, 2, 2, 3, 1]
# Output: 2
# Explanation:
# The input array has a degree of 2 because both elements 1 and 2 appear twice.
# Of the subarrays that have the same degree:
# [1, 2, 2, 3, 1], [1, 2, 2, 3], [2, 2, 3, 1], [1, 2, 2], [2, 2, 3], [2, 2]
# The shortest length is 2. So return 2.
# Example 2:
# Input: [1,2,2,3,1,4,2]
# Output: 6
# Note:
#
# nums.length will be between 1 and 50,000.
# nums[i] will be an integer between 0 and 49,999.

# param {Integer[]} nums
# return {Integer}

def find_shortest_sub_array(nums)
  degree = -1.0 / 0.0
  nums_freq = Hash.new { |h, k| h[k] = [] }
  min_length = 1.0 / 0.0

  (0...nums.length).each do |i|
    nums_freq[nums[i]].push(i)

    degree = nums_freq[nums[i]].length if nums_freq[nums[i]].length > degree
  end

  nums_freq.each do |k, v|
    if v.length == degree
      cur_length = v.last - v.first + 1

      min_length = [cur_length, min_length].min
    end
  end

  min_length
end

# Time Complexity - O(n)
# Space Complexity - O(n)
