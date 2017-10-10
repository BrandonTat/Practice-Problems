# Given two sorted integer arrays nums1 and nums2,
# merge nums2 into nums1 as one sorted array.
#
# Note:
# You may assume that nums1 has enough space (size
# that is greater or equal to m + n) to hold additional
# elements from nums2. The number of elements initialized
# in nums1 and nums2 are m and n respectively.

# param {Integer[]} nums1
# param {Integer} m
# param {Integer[]} nums2
# param {Integer} n
# return {Void} Do not return anything, modify nums1 in-place instead.

def merge(nums1, m, nums2, n)
  p1, p2, p3 = m - 1, n - 1, m + n - 1

  while p1 >= 0 && p2 >= 0
    if nums1[p1] > nums2[p2]
      nums1[p3] = nums1[p1]
      p1 -= 1
    else
      nums1[p3] = nums2[p2]
      p2 -= 1
    end

    p3 -= 1
  end

  while p2 >= 0
    nums1[p3] = nums2[p2]
    p3 -= 1
    p2 -= 1
  end

  nil
end

# Time Complexity - O(m + n)
# Space Complexity - O(1)
