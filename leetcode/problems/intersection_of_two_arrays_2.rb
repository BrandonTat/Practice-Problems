# Given two arrays, write a function to compute their intersection.
#
# Example:
# Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].
#
# Note:
# Each element in the result should appear as many times as it shows
# in both arrays.
# The result can be in any order.
#
# Follow up:
# What if the given array is already sorted? How would you
#   optimize your algorithm?
# What if nums1's size is small compared to nums2's size?
#   Which algorithm is better?
# What if elements of nums2 are stored on disk, and the memory
#   is limited such that you cannot load all elements into the memory at once?

# param {Integer[]} nums1
# param {Integer[]} nums2
# return {Integer[]}

def intersect(nums1, nums2)
  return [] if nums1.empty? || nums2.empty?

  result = []
  nums1.sort!
  nums2.sort!
  p1, p2 = 0, 0

  while p1 < nums1.length && p2 < nums2.length
    if nums1[p1] == nums2[p2]
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
# Space Complexity O(n)
