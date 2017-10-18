# Given a sorted integer array without duplicates,
# return the summary of its ranges.
#
# Example 1:
# Input: [0,1,2,4,5,7]
# Output: ["0->2","4->5","7"]
#
# Example 2:
# Input: [0,2,3,4,6,8,9]
# Output: ["0","2->4","6","8->9"]

# param {Integer[]} nums
# return {String[]}

def summary_ranges(nums)
  return [] if nums.empty?

  result = []
  cur = [nums.first]

  (1...nums.length).each do |i|
    if nums[i] == cur.last + 1
      if cur.size == 1
        cur << nums[i]
      else
        cur[-1] = nums[i]
      end
    else
      result << cur.join('->')
      cur = [nums[i]]
    end
  end

  result << cur.join('->')
end

# Time Complexity - O(n)
# Space Complexity - O(n)
