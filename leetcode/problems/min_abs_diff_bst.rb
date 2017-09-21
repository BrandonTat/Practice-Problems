# Given a binary search tree with non-negative values,
# find the minimum absolute difference between values
# of any two nodes.
#
# Example:
#
# Input:
#
#    1
#     \
#      3
#     /
#    2
#
# Output:
# 1
#
# Explanation:
# The minimum absolute difference is 1, which is the
#   difference between 2 and 1 (or between 2 and 3).
#
# Note: There are at least two nodes in this BST

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} root
# return {Integer}

def get_minimum_difference(root)
  min = 1.0/0/0
  values = []

  inorder_values(root, values)

  (1...values.length).each do |i|
    cur_min = values[i] - values[i - 1]
    min = [min, cur_min].min
  end

  min
end


def inorder_values(root, values)
  return if root.nil?

  inorder_values(root.left, values)
  values << root.val
  inorder_values(root.right, values)
end
