# Given a binary tree, return the bottom-up level order traversal
# of its nodes' values. (ie, from left to right, level by level
# from leaf to root).
#
# For example:
# Given binary tree [3,9,20,null,null,15,7],
#     3
#    / \
#   9  20
#     /  \
#    15   7
# return its bottom-up level order traversal as:
# [
#   [15,7],
#   [9,20],
#   [3]
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

def level_order_bottom(root)
  return [] if root.nil?

  result = []
  to_explore = [[root]]

  until to_explore.empty?
    cur_values = []
    future_nodes = []
    cur_nodes = to_explore.shift

    cur_nodes.each do |node|
      l, r = node.left, node.right
      cur_values << node.val
      future_nodes << l if l
      future_nodes << r if r
    end

    result << cur_values unless cur_values.empty?
    to_explore << future_nodes unless future_nodes.empty?
  end

  result.reverse
end

# Time Complexity - O(n)
# Space Complexity - O(n)

# n = number of nodes
