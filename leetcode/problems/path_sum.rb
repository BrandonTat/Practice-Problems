# Given a binary tree and a sum, determine if the tree has a root-to-leaf
# path such that adding up all the values along the path equals the
# given sum.
#
# For example:
# Given the below binary tree and sum = 22,
#               5
#              / \
#             4   8
#            /   / \
#           11  13  4
#          /  \      \
#         7    2      1
# return true, as there exist a root-to-leaf path 5->4->11->2
# which sum is 22.

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
# return {Boolean}

def has_path_sum(root, sum)
  return false if root.nil?
  path_sum(root, sum)
end


def path_sum(root, sum)
  l, r = root.left, root.right
  return (sum - root.val).zero? if l.nil? && r.nil?

  return true if l && path_sum(root.left, sum - root.val)
  return true if r && path_sum(root.right, sum - root.val)

  false
end
