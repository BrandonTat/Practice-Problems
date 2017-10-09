# Given a binary tree, check whether it is a
# mirror of itself (ie, symmetric around its center).
#
# For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
#
#     1
#    / \
#   2   2
#  / \ / \
# 3  4 4  3
# But the following [1,2,2,null,3,null,3] is not:
#     1
#    / \
#   2   2
#    \   \
#    3    3
# Note:
# Bonus points if you could solve it both recursively and iteratively.

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

def is_symmetric(root)
  !root || check_symmetric(root.right, root.left)
end

def check_symmetric(left, right)
  if left.nil? && right.nil?
    return true
  elsif left && right
    return (left.val == right.val) &&
      check_symmetric(left.left, right.right) &&
      check_symmetric(left.right, right.left)
  end

  false
end

# Time Complexity - O(n)
# Space Complexity - O(h)

# n = number of nodes
# h = height of tree
