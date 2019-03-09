# In a given grid, each cell can have one of three values:
#
# the value 0 representing an empty cell;
# the value 1 representing a fresh orange;
# the value 2 representing a rotten orange.
# Every minute, any fresh orange that is adjacent (4-directionally) to a rotten
# orange becomes rotten.
#
# Return the minimum number of minutes that must elapse until no cell has a fresh
# orange.  If this is impossible, return -1 instead.
#
#
# Example 1:
#
# Input: [[2,1,1],[1,1,0],[0,1,1]]
# Output: 4
#
#
# Example 2:
#
# Input: [[2,1,1],[0,1,1],[1,0,1]]
# Output: -1
# Explanation:  The orange in the bottom left corner (row 2, column 0) is never
# rotten, because rotting only happens 4-directionally.
#
#
# Example 3:
#
# Input: [[0,2]]
# Output: 0
# Explanation:  Since there are already no fresh oranges at minute 0, the answer
# is just 0.
#
# Note:
#
# 1 <= grid.length <= 10
# 1 <= grid[0].length <= 10
# grid[i][j] is only 0, 1, or 2.

# @param {Integer[][]} grid
# @return {Integer}
def oranges_rotting(grid)
  return 0 if grid.nil? || grid.empty?

  rotten_positions = []
  number_of_fresh_oranges = 0
  number_of_minutes = 0

  number_of_rows = grid.length - 1
  number_of_cols = grid.first.length - 1

  (0..number_of_rows).each do |row_idx|
    (0..number_of_cols).each do |col_idx|
      next if grid[row_idx][col_idx] == 0

      if grid[row_idx][col_idx] == 1
        number_of_fresh_oranges += 1
      elsif grid[row_idx][col_idx] == 2
        rotten_positions << [row_idx, col_idx]
      end
    end
  end

  until number_of_fresh_oranges == 0 || rotten_positions.empty?
    new_rotten_positions = []

    rotten_positions.each do |rotten_position|
      to_check = build_check_positions(rotten_position, number_of_rows, number_of_rows)

      to_check.each do |check|
        row, col = check

        if grid[row][col] == 1
          grid[row][col] = 2
          number_of_fresh_oranges -= 1
          new_rotten_positions << [row, col]
        end
      end
    end

    rotten_positions = new_rotten_positions
    number_of_minutes += 1
  end

  rotten_positions.empty? ? number_of_minutes : -1
end


def build_check_positions(position, number_of_rows, number_of_rows)
  possible_positions = [[0, -1], [-1, 0], [0, 1], [1, 0]]
  valid_positions = []

  possible_positions.each do |possible_position|
    new_row = position[0] + possible_position[0]
    new_col = position[1] + possible_position[1]

    if new_row.between?(0, number_of_rows) && new_col.between?(0, number_of_cols)
      valid_positions << [new_row, new_col]
    end
  end

  valid_positions
end
