# Given a non-empty binary tree, return the average value of the
# nodes on each level in the form of an array.
#
# Example 1:
# Input:
#     3
#    / \
#   9  20
#     /  \
#    15   7
# Output: [3, 14.5, 11]
# Explanation:
# The average value of nodes on level 0 is 3,  on level 1 is 14.5,
# and on level 2 is 11. Hence return [3, 14.5, 11].
# Note:
# The range of node's value is in the range of 32-bit signed integer.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} root
# return {Float[]}

def average_of_levels(root)
  return [] if root.nil?

  to_explore = [[root]]
  result = []

  until to_explore.empty?
    cur_nodes = to_explore.shift
    future_nodes = []
    sum = 0
    count = 0

    cur_nodes.each do |node|
      sum += node.val
      count += 1

      future_nodes << node.left if node.left
      future_nodes << node.right if node.right
    end

    result << sum / count.to_f
    to_explore << future_nodes unless future_nodes.empty?
  end

  result
end

# Time Complexity - O(n)
# Space Complexity - O(n)
