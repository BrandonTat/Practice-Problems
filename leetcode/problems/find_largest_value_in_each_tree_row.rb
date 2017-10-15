# You need to find the largest value in each row of a binary tree.
#
# Example:
# Input:
#
#           1
#          / \
#         3   2
#        / \   \
#       5   3   9
#
# Output: [1, 3, 9]

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

def largest_values(root)
  return [] if root.nil?

  to_explore = [[root]]
  result = []

  until to_explore.empty?
    explore = to_explore.shift
    largest_value = -1.0 / 0.0
    add = []

    explore.each do |node|
      largest_value = node.val if node.val > largest_value
      l, r = node.left, node.right
      add << l if l
      add << r if r
    end

    result << largest_value
    to_explore << add unless add.empty?
  end

  result
end
