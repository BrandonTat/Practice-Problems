# You are given a map in form of a two-dimensional integer grid where 1
# represents land and 0 represents water. Grid cells are connected
# horizontally/vertically (not diagonally). The grid is completely
# surrounded by water, and there is exactly one island (i.e., one or
# more connected land cells). The island doesn't have "lakes" (water
# inside that isn't connected to the water around the island). One
# cell is a square with side length 1. The grid is rectangular, width
# and height don't exceed 100. Determine the perimeter of the island.
#
# Example:
#
# [[0,1,0,0],
#  [1,1,1,0],
#  [0,1,0,0],
#  [1,1,0,0]]
#
# Answer: 16
# Explanation: The perimeter is the 16 yellow stripes in the image below:

# param {Integer[][]} grid
# return {Integer}

def island_perimeter(grid)
  land, neighbors = 0, 0

  num_rows = grid.length
  num_cols = grid.first.length

  (0...num_rows).each do |row_idx|
    (0...num_cols).each do |col_idx|
      if grid[row_idx][col_idx] == 1
        land += 1

        if row_idx + 1 < num_rows && grid[row_idx + 1][col_idx] == 1
          neighbors += 1
        end

        if col_idx + 1 < num_cols && grid[row_idx][col_idx + 1] == 1
          neighbors += 1
        end
      end
    end
  end

  (land * 4) - (neighbors * 2)
end

# Time Complexity - O(m * n)
# Space Complexiyt - O(1)
