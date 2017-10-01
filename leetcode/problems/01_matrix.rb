# Given a matrix consists of 0 and 1, find the distance of
# the nearest 0 for each cell.
#
# The distance between two adjacent cells is 1.
# Example 1:
# Input:
#
# 0 0 0
# 0 1 0
# 0 0 0
# Output:
# 0 0 0
# 0 1 0
# 0 0 0
# Example 2:
# Input:
#
# 0 0 0
# 0 1 0
# 1 1 1
# Output:
# 0 0 0
# 0 1 0
# 1 2 1
# Note:
# The number of elements of the given matrix will not exceed 10,000.
# There are at least one 0 in the given matrix.
# The cells are adjacent in only four directions: up, down, left and right.

# param {Integer[][]} matrix
# return {Integer[][]}

def update_matrix(matrix)
  num_rows = matrix.length
  num_cols = matrix.first.length

  queue = []

  (0...num_rows).each do |row_idx|
    (0...num_cols).each do |col_idx|
      if matrix[row_idx][col_idx].zero?
        queue << [row_idx, col_idx]
      else
        matrix[row_idx][col_idx] = 1.0 / 0.0
      end
    end
  end

  spaces = [[-1, 0], [1, 0], [0, -1], [0, 1]]

  until queue.empty?
    cur = queue.pop
    spaces.each do |space|
      new_r = cur.first + space.first
      new_c = cur.last + space.last

      next if new_r < 0 || new_r >= num_rows ||
        new_c < 0 || new_c >= num_cols ||
        matrix[new_r][new_c] <= matrix[cur[0]][cur[1]] + 1

      matrix[new_r][new_c] = matrix[cur[0]][cur[1]] + 1
      queue.unshift([new_r, new_c])
    end
  end

  matrix
end

# Time Complexity - O(m*n)
# Space Complexity - O(m*n)
