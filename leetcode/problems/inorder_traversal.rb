# Given a binary tree, return the inorder
# traversal of its nodes' values.
#
# For example:
# Given binary tree [1,null,2,3],
#    1
#     \
#      2
#     /
#    3
# return [1,3,2].
#
# Note: Recursive solution is trivial, could you do it iteratively?

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

def inorder_traversal(root)
  return [] if root.nil?
  result = []
  get_nodes(root, result)
  result
end

def get_nodes(root, result)
  if root.left
    get_nodes(root.left, result)
  end

  result << root.val

  if root.right
    get_nodes(root.right, result)
  end
end
