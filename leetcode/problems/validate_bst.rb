# Given a binary tree, determine if it is a valid binary search tree (BST).
#
# Assume a BST is defined as follows:
#   The left subtree of a node contains only nodes with keys less than the node's key.
#   The right subtree of a node contains only nodes with keys greater than the node's key.
#   Both the left and right subtrees must also be binary search trees.
#
# Example 1:
#     2
#    / \
#   1   3
# Binary tree [2,1,3], return true.
#
# Example 2:
#     1
#    / \
#   2   3
# Binary tree [1,2,3], return false.
# Definition for a binary tree node.


# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} root
# return {Boolean}
def is_valid_bst(root, floor = -1.0 / 0.0, ceil = 1.0 / 0.0)
  return true if root.nil?

  if root.val <= floor || root.val >= ceil
    return false
  else
    is_valid_bst(root.left, floor, root.val) &&
    is_valid_bst(root.right, root.val, ceil)
  end
end
