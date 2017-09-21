# Given a Binary Search Tree and a target number,
# return true if there exist two elements in the BST
# such that their sum is equal to the given target.
#
# Example 1:
# Input:
#     5
#    / \
#   3   6
#  / \   \
# 2   4   7
#
# Target = 9
#
# Output: True
# Example 2:
# Input:
#     5
#    / \
#   3   6
#  / \   \
# 2   4   7
#
# Target = 28
#
# Output: False

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} root
# param {Integer} k
# return {Boolean}

def find_target(root, k)
  seen = {}

  dfs_search(root, k, seen)
end


def dfs_search(root, k, seen)
  return false if root.nil?

  if seen[k - root.val]
    return true
  end

  seen[root.val] = true

  dfs_search(root.left, k, seen) || dfs_search(root.right, k, seen)
end

# Time Complexity O(n)
# Space Complexity - O(n)
