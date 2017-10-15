# Given an integer n, generate a square matrix filled with
# elements from 1 to n2 in spiral order.
#
# For example,
# Given n = 3,
#
# You should return the following matrix:
# [
#  [ 1, 2, 3 ],
#  [ 8, 9, 4 ],
#  [ 7, 6, 5 ]
# ]

# param {Integer} n
# return {Integer[][]}

def generate_matrix(n)
  matrix = Array.new(n) {Array.new(n, nil)}
  r1, r2, c1, c2 = -1, n, -1, n
  count = 0

  while count < n * n
    r1, r2, c1, c2 = r1 + 1, r2 - 1, c1 + 1, c2 - 1

    (c1..c2).each do |col_idx|
      count += 1
      matrix[r1][col_idx] = count
    end
    break if count == n * n

    (r1 + 1..r2).each do |row_idx|
      count += 1
      matrix[row_idx][c2] = count
    end

    (c2 - 1).downto(c1).each do |col_idx|
      count += 1
      matrix[r2][col_idx] = count
    end

    break if count == n * n
    (r2 - 1).downto(r1 + 1).each do |row_idx|
      count += 1
      matrix[row_idx][c1] = count
    end
  end

  matrix
end

# Time Complexity - O(n * n)
# Space Complexity - O(n * n)
