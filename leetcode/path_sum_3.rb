# You are given a binary tree in which each node contains an integer value.
#
# Find the number of paths that sum to a given value.
#
# The path does not need to start or end at the root or a leaf, but
#  it must go downwards (traveling only from parent nodes to child nodes).
#
# The tree has no more than 1,000 nodes and the values
# are in the range -1,000,000 to 1,000,000.
#
# Example:
#
# root = [10,5,-3,3,2,null,11,3,-2,null,1], sum = 8
#
#       10
#      /  \
#     5   -3
#    / \    \
#   3   2   11
#  / \   \
# 3  -2   1
#
# Return 3. The paths that sum to 8 are:
#
# 1.  5 -> 3
# 2.  5 -> 2 -> 1
# 3. -3 -> 11


# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} root
# param {Integer} sum
# return {Integer}

def path_sum(root, sum)
  return 0 if root.nil?

  path_sum_from(root, sum) +
  path_sum(root.left, sum) +
  path_sum(root.right, sum)
end

def path_sum_from(root, sum)
  return 0 if root.nil?

  current = (root.val == sum ? 1 : 0)

  current + path_sum_from(root.left, sum - root.val) +
  path_sum_from(root.right, sum - root.val)
end

# Time Complexity: O(N)
# Space Complexity: O(N^2)
