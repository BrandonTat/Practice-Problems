# Given a triangle, find the minimum path sum from top to bottom.
# Each step you may move to adjacent numbers on the row below.
#
# For example, given the following triangle
# [
#      [2],
#     [3,4],
#    [6,5,7],
#   [4,1,8,3]
# ]
# The minimum path sum from top to bottom is 11 (i.e., 2 + 3 + 5 + 1 = 11).
#
# Note:
# Bonus point if you are able to do this using only O(n) extra space,
# where n is the total number of rows in the triangle.

# param {Integer[][]} triangle
# return {Integer}

def minimum_total(triangle)
  num_rows = triangle.length
  dp = Array.new(num_rows + 1, 0)

  (num_rows - 1).downto(0).each do |row_idx|
    (0...triangle[row_idx].size).each do |col_idx|
      dp[col_idx] = triangle[row_idx][col_idx] + [dp[col_idx], dp[col_idx + 1]].min
    end
  end

  dp.first
end

# Time Complexity - O(n * m)
# Space Complexity - O(n)

# n = num_rows
# m = num_cols
