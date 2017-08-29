# Follow up for "Unique Paths":
#
# Now consider if some obstacles are added to the grids.
# How many unique paths would there be?
#
# An obstacle and empty space is marked as 1 and 0 respectively in the grid.
#
# For example,
# There is one obstacle in the middle of a 3x3 grid as illustrated below.
#
# [
#   [0,0,0],
#   [0,1,0],
#   [0,0,0]
# ]
# The total number of unique paths is 2.
#
# Note: m and n will be at most 100.

# param {Integer [][]} obstacle_grid
# return {Integer}

def unique_paths_with_obstacles(obstacle_grid)
  return 0 if obstacle_grid.empty?

  num_rows = obstacle_grid.length
  num_cols = obstacle_grid[0].length

  (0...num_rows).each do |row_i|
    (0...num_cols).each do |col_i|
      if obstacle_grid[row_i][col_i] == 1
        obstacle_grid[row_i][col_i] = 0
      elsif row_i.zero? && col_i.zero?
        obstacle_grid[row_i][col_i] = 1
      elsif row_i.zero?
        obstacle_grid[row_i][col_i] = obstacle_grid[row_i][col_i - 1]
      elsif col_i.zero?
        obstacle_grid[row_i][col_i] = obstacle_grid[row_i - 1][col_i]
      else
        obstacle_grid[row_i][col_i] = obstacle_grid[row_i - 1][col_i] + obstacle_grid[row_i][col_i - 1]
      end
    end
  end

  obstacle_grid[num_rows - 1][num_cols - 1]
end

# Time Complexity - O(n*m)
# Space Complexity - O(1)
