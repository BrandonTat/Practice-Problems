# Given a binary tree, determine if it is height-balanced.
#
# For this problem, a height-balanced binary tree is defined
# as a binary tree in which the depth of the two subtrees of
# every node never differ by more than 1.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} root
# return {Boolean}

def is_balanced?(root)
  return true if root.nil?

  left = find_height(root.left)
  right = find_height(root.right)

  (left - right).abs <= 1 && is_balanced?(root.left) && is_balanced?(root.right)
end


def find_height(node)
  return 0 if node.nil?

  1 + [find_height(node.left), find_height(node.right)].max
end
