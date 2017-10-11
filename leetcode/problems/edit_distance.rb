# Given two words word1 and word2, find the minimum number of steps
# required to convert word1 to word2. (each operation is counted as 1 step.)
#
# You have the following 3 operations permitted on a word:
#
# a) Insert a character
# b) Delete a character
# c) Replace a character

# param {String} word1
# param {String} word2
# return {Integer}

def min_distance(word1, word2)
  return word1.size if word2.empty?
  return word2.size if word1.empty?

  m, n = word1.size, word2.size

  dp = Array.new(m + 1) { Array.new(n + 1, 0) }

  1.upto(m).each { |row_idx| dp[row_idx][0] = row_idx }
  1.upto(n).each { |col_idx| dp[0][col_idx] = col_idx }

  (1..m).each do |row_idx|
    (1..n).each do |col_idx|
      if word1[row_idx - 1] == word2[col_idx - 1]
        dp[row_idx][col_idx] = dp[row_idx - 1][col_idx - 1]
      else
        prev_row = dp[row_idx - 1][col_idx]
        prev_col = dp[row_idx][col_idx - 1]
        prev_diag = dp[row_idx - 1][col_idx - 1]

        dp[row_idx][col_idx] = 1 + [prev_row, prev_col, prev_diag].min
      end
    end
  end

  dp.last.last
end

# Time Complexity - O(mn)
# Space Complexity - O(mn)
#
# m = length of word1
# n = length of word2
