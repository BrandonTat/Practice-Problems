# Given a 2D binary matrix filled with 0's and 1's, find the largest square containing only 1's and return its area.
#
# For example, given the following matrix:
#
# 1 0 1 0 0
# 1 0 1 1 1
# 1 1 1 1 1
# 1 0 0 1 0
# Return 4.
# Credits:
# Special thanks to @Freezen for adding this problem and creating all test cases.

def maximal_square(matrix)
  return 0 if matrix.empty?

  max = 0
  m, n = matrix.size, matrix[0].size
  dp = Array.new(m) { Array.new(n, 0) }

  (0...m).each do |i|
    (0...n).each do |j|
      if i == 0 || j == 0 || matrix[i][j] == '0'
        dp[i][j] = matrix[i][j].to_i
      else
        dp[i][j] = [dp[i-1][j-1], dp[i-1][j], dp[i][j-1]].min + 1
      end

      max = dp[i][j] if dp[i][j] > max
    end
  end

  max * max
end
