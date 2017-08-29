# Given an unsorted array of integers, find the
# length of longest increasing subsequence.
#
# For example,
#   Given [10, 9, 2, 5, 3, 7, 101, 18],
#
#   The longest increasing subsequence is [2, 3, 7, 101],
#   therefore the length is 4. Note that there may be more
#   than one LIS combination, it is only necessary for you to return the length.
#
# Your algorithm should run in O(n2) complexity.

# param {Integer[]} nums
# return {Integer}

def length_of_list(nums)
  list = {}

  (0...nums.size).each do |i|
    list_conn_values = list.keys.select do |j|
      j < i && nums[j] < nums[i]
    end

    list_conn_values = list_conn_values.map do |k|
      list[k]
    end

    list[i] = 1 + (list_conn_values.max || 0)
  end

  list.values.max
end

# Time Complexity - O(n^2)
# Space Complexity - O(n)
