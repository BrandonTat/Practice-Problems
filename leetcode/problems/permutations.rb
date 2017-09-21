# Given a collection of distinct numbers, return
# all possible permutations.
#
# For example,
#   [1,2,3] have the following permutations:
#
#     [
#       [1,2,3],
#       [1,3,2],
#       [2,1,3],
#       [2,3,1],
#       [3,1,2],
#       [3,2,1]
#     ]

# param {Integer[]} nums
# return {Integer[][]}

def permute(nums)
  return [[]] if nums.empty?

  perms = []

  (0...nums.length).each do |i|
    el = nums[i]
    rest = nums.take(i) + nums.drop(i + 1)

    new_perms = permute(rest).map { |perm| perm.unshift(el) }
    perms.concat(new_perms)
  end

  perms
end
