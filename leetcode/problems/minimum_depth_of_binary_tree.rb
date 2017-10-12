# Given a binary tree, find its minimum depth.
#
# The minimum depth is the number of nodes along the
# shortest path from the root node down to the nearest leaf node.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# param {TreeNode} root
# return {Integer}

def min_depth(root)
  return 0 if root.nil?

  count = 1
  to_explore = [[root]]

  until to_explore.empty?
    cur_nodes = to_explore.shift
    future_nodes = []

    cur_nodes.each do |node|
      l, r = node.left, node.right

      return count unless l || r

      future_nodes << l if l
      future_nodes << r if r
    end
    to_explore << future_nodes
    count += 1
  end

  count
end
