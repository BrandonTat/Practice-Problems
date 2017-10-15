# Given a non-empty 2D array grid of 0's and 1's, an island is a
# group of 1's (representing land) connected 4-directionally
# (horizontal or vertical.) You may assume all four edges of
# the grid are surrounded by water.
#
# Find the maximum area of an island in the given 2D array.
# (If there is no island, the maximum area is 0.)
#
# Example 1:
# [[0,0,1,0,0,0,0,1,0,0,0,0,0],
#  [0,0,0,0,0,0,0,1,1,1,0,0,0],
#  [0,1,1,0,1,0,0,0,0,0,0,0,0],
#  [0,1,0,0,1,1,0,0,1,0,1,0,0],
#  [0,1,0,0,1,1,0,0,1,1,1,0,0],
#  [0,0,0,0,0,0,0,0,0,0,1,0,0],
#  [0,0,0,0,0,0,0,1,1,1,0,0,0],
#  [0,0,0,0,0,0,0,1,1,0,0,0,0]]
# Given the above grid, return 6. Note the answer is not 11,
# because the island must be connected 4-directionally.
#
# Example 2:
# [[0,0,0,0,0,0,0,0]]
# Given the above grid, return 0.
# Note: The length of each dimension in the given grid does not exceed 50.

# param {Integer[][]} grid
# return {Integer}

def max_area_of_island(grid)
  return 0 if grid.empty?

  biggest_island = 0
  num_rows = grid.length
  num_cols = grid.first.length

  (0...num_rows).each do |row_idx|
    (0...num_cols).each do |col_idx|
      if grid[row_idx][col_idx] == 1
        cur = dfs_search(grid, row_idx, col_idx)
        biggest_island = cur if cur > biggest_island
      end
    end
  end

  biggest_island
end


def dfs_search(grid, row, col)
  num_rows = grid.length
  num_cols = grid.first.length

  if row >= 0 && row < num_rows &&
    col >= 0 && col < num_cols && grid[row][col] == 1

    grid[row][col] = 0
    return 1 + dfs_search(grid, row - 1, col) +
               dfs_search(grid, row + 1, col) +
               dfs_search(grid, row, col - 1) +
               dfs_search(grid, row, col + 1)
  end

  0
end

# Time Complexity - O(m * n)
# Space Complexity - O(m * n)
