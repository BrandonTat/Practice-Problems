# Given a binary tree, return the level order traversal of its nodes'
# values. (ie, from left to right, level by level).
#
# For example:
# Given binary tree [3,9,20,null,null,15,7],
#     3
#    / \
#   9  20
#     /  \
#    15   7
# return its level order traversal as:
# [
#   [3],
#   [9,20],
#   [15,7]
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
# return {Integer[][]}

def level_order(root)
  return [] if root.nil?

  result =  []
  to_explore = [[root]]

  until to_explore.empty?
    check = to_explore.shift

    cur_depth = []
    next_depth = []

    check.each do |el|
      cur_depth << el.val
      next_depth << el.left if el.left
      next_depth << el.right if el.right
    end

    to_explore << next_depth unless next_depth.empty?
    result << cur_depth
  end

  result
end
