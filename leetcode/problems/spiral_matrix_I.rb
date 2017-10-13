# Given a matrix of m x n elements (m rows, n columns),
# return all elements of the matrix in spiral order.
#
# For example,
# Given the following matrix:
#
# [
#  [ 1, 2, 3 ],
#  [ 4, 5, 6 ],
#  [ 7, 8, 9 ]
# ]
# You should return [1,2,3,6,9,8,7,4,5].

# param {Integer[][]} matrix
# return {Integer[]}

def spiral_order(matrix)
  return [] if matrix.empty?

  result = []
  num_rows = matrix.length
  num_cols = matrix.first.length

  r1, r2, c1, c2 = -1, num_rows, -1, num_cols

  loop do
    r1, r2, c1, c2 = r1 + 1, r2 - 1, c1 + 1, c2 - 1
    rows_left = r2 - r1 + 1
    cols_left = c2 - c1 + 1

    (c1..c2).each do |col_idx|
      result << matrix[r1][col_idx]
    end
    return result if rows_left <= 1

    (r1 + 1..r2).each do |row_idx|
      result << matrix[row_idx][c2]
    end

    (c2 - 1).downto(c1).each do |col_idx|
      result << matrix[r2][col_idx]
    end

    if cols_left > 1
      (r2 - 1).downto(r1 + 1).each do |row_idx|
        result << matrix[row_idx][c1]
      end
    end

    return result if result.length == num_rows * num_cols
  end
end

# Time Complexity - O(nm)
# Space Complexity - O(nm)
