# A robot is located at the top-left corner
# of a m x n grid (marked 'Start' in the diagram below).
#
# The robot can only move either down or right at any point in time.
# The robot is trying to reach the bottom-right corner of the grid
# (marked 'Finish' in the diagram below).
#
# How many possible unique paths are there?
#
# Note: m and n will be at most 100.

# param {Integer} m
# param {Integer} n
# return {Integer}

def unique_paths(m, n)
  path = Array.new(m) { Array.new(n, 1) }

  (1...m).each do |row|
    (1...n).each do |col|
      path[row][col] = path[row - 1][col] + path[row][col - 1]
    end
  end

  path.flatten.max
end

# Time Complexity - O(m * n)
# Space Complexity - O(m * n)
