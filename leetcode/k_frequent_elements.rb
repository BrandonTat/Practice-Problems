# Given a non-empty array of integers, return the k most frequent elements.
#
# For example,
# Given [1,1,1,2,2,3] and k = 2, return [1,2].
#
# Note:
#   You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
#   Your algorithm's time complexity must be better than O(n log n),
#    where n is the array's size.

# param {Integer[]} nums
# param {Integer} k
# return {Integer[]}

def top_k_frequent(nums, k)
  num_count = {}

  nums.each do |num|
    if num_count[num]
      num_count[num] += 1
    else
      num_count[num] = 1
    end
  end

  num_ordering = num_count.keys.sort_by do |key|
    num_count[key]
  end.reverse

  num_ordering.slice(0, k)
end

# Time Complexity - O(nlogn)
# Space Complexity - O(n)
