# Given two arrays, write a function to compute their intersection.
#
# Example:
# Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].
#
# Note:
# Each element in the result must be unique.
# The result can be in any order.

# param {Integer[]} nums1
# param {Integer[]} nums2
# return {Integer[]}

def intersection(nums1, nums2)
  result = []

  nums1.sort!
  nums2.sort!

  p1, p2 = 0, 0

  while p1 < nums1.length && p2 < nums2.length
    if nums1[p1] == nums2[p2] && result[-1] != nums1[p1]
      result << nums1[p1]
      p1 += 1
      p2 += 1
    elsif nums1[p1] < nums2[p2]
      p1 += 1
    else
      p2 += 1
    end
  end

  result
end

# Time Complexity - O(nlogn)
# Space Complexity - O(n)
