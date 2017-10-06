# Given a binary tree, return all root-to-leaf paths.
#
# For example, given the following binary tree:
#
#    1
#  /   \
# 2     3
#  \
#   5
# All root-to-leaf paths are:
#
# ["1->2->5", "1->3"]

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} root
# return {String[]}

def binary_tree_paths(root)
  return [] if root.nil?

  result = []
  find_all_paths(root, [], result)
  result.map { |el| el.join('->') }
end


def find_all_paths(root, cur, result)
  l, r, v = root.left, root.right, root.val

  if l.nil? && r.nil?
    result << cur + [v]
  end

  find_all_paths(root.left, cur + [v], result) if l
  find_all_paths(root.right, cur + [v], result) if r
end
