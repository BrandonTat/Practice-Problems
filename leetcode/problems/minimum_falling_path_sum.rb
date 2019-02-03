# Given a square array of integers A, we want the minimum sum of a falling path through A.
#
# A falling path starts at any element in the first row, and chooses one element from
# each row.  The next row's choice must be in a column that is different from the previous
# row's column by at most one.
#
# Example 1:
#
# Input: [[1,2,3],[4,5,6],[7,8,9]]
# Output: 12
# Explanation:
# The possible falling paths are:
# [1,4,7], [1,4,8], [1,5,7], [1,5,8], [1,5,9]
# [2,4,7], [2,4,8], [2,5,7], [2,5,8], [2,5,9], [2,6,8], [2,6,9]
# [3,5,7], [3,5,8], [3,5,9], [3,6,8], [3,6,9]
# The falling path with the smallest sum is [1,4,7], so the answer is 12.
#
# Note:
#
# 1 <= A.length == A[0].length <= 100
# -100 <= A[i][j] <= 100

# @param {Integer[][]} a
# @return {Integer}
def min_falling_path_sum(a)
  paths = a.map(&:clone)

  num_rows = a.length
  num_cols = a.first.length

  (1...num_rows).each do |row_index|
    (0...num_cols).each do |col_index|
      if col_index == 0
        path0 = paths[row_index - 1][col_index]
        path1 = paths[row_index - 1][col_index + 1]

        paths[row_index][col_index] += [path0, path1].min
      elsif col_index == num_cols - 1
        path0 = paths[row_index - 1][col_index - 1]
        path1 = paths[row_index - 1][col_index]

        paths[row_index][col_index] += [path0, path1].min
      else
        path0 = paths[row_index - 1][col_index - 1]
        path1 = paths[row_index - 1][col_index]
        path2 = paths[row_index - 1][col_index + 1]

        paths[row_index][col_index] += [path0, path1, path2].min
      end
    end
  end

  paths.last.min
end

# Time Complexity = O(m*n), where m = num_rows, n = num_cols
# Space Complexity = O(m*n), where m = num_rows, n = num_cols
