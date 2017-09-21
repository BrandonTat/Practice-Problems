# Given two binary trees, write a function to check
# if they are equal or not.
#
# Two binary trees are considered equal if they are
# structurally identical and the nodes have the same value.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} p
# param {TreeNode} q
# return {Boolean}

def is_same_tree(p, q)
  if p.nil? && q.nil?
    true
  elsif p.nil? || q.nil?
    false
  elsif p.val == q.val
    is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
  else
    false
  end
end
