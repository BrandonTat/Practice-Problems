# Given a binary search tree (BST) with duplicates, find all the mode(s)
# (the most frequently occurred element) in the given BST.
#
# Assume a BST is defined as follows:
#
# The left subtree of a node contains only nodes with keys
#   less than or equal to the node's key.
# The right subtree of a node contains only nodes with keys
#   greater than or equal to the node's key.
# Both the left and right subtrees must also be binary search trees.
#
# For example:
# Given BST [1,null,2,2],
#    1
#     \
#      2
#     /
#    2
# return [2].
#
# Note: If a tree has more than one mode, you can return them in any order.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} root
# return {Integer[]}

def find_mode(root)
  seen = Hash.new { |h, k| h[k] = 0 }

  get_values(root, seen)

  max = seen.values.max
  seen.keys.select { |k| seen[k] == max }
end

def get_values(root, seen)
  return if root.nil?

  seen[root.val] += 1

  get_values(root.left, seen)
  get_values(root.right, seen)
end
