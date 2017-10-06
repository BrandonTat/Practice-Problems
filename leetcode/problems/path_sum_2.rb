# Given a binary tree and a sum, find all root-to-leaf paths
# where each path's sum equals the given sum.
#
# For example:
# Given the below binary tree and sum = 22,
#               5
#              / \
#             4   8
#            /   / \
#           11  13  4
#          /  \    / \
#         7    2  5   1
# return
# [
#    [5,4,11,2],
#    [5,8,4,5]
# ]

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
# return {Integer[][]}

def path_sum(root, sum)
  return [] if root.nil?

  result = []
  find_valid_paths(root, sum, [], result)
  result
end


def find_valid_paths(root, sum, cur, result)
  l, r, v = root.left, root.right, root.val

  if l.nil? && r.nil? && (sum - v).zero?
    result << (cur + [v])
  end

  find_valid_paths(l, sum - v, cur + [v], result) if l
  find_valid_paths(r, sum - v, cur + [v], result) if r
end
