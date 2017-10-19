# Given a binary tree, return the preorder traversal of its nodes' values.
#
# For example:
# Given binary tree {1,#,2,3},
#    1
#     \
#      2
#     /
#    3
# return [1,2,3].

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
def preorder_traversal(root)
  return [] if root.nil?
  result = []
  get_nodes_preorder(root, result)
  result
end


def get_nodes_preorder(root, result)
  result << root.val

  if root.left
    get_nodes_preorder(root.left, result)
  end

  if root.right
    get_nodes_preorder(root.right, result)
  end
end
