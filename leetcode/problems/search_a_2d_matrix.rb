# Write an efficient algorithm that searches for a value in an m x n
# matrix. This matrix has the following properties:
#
# Integers in each row are sorted from left to right.
# The first integer of each row is greater than the last integer
# of the previous row.
# For example,
#
# Consider the following matrix:
#
# [
#   [1,   3,  5,  7],
#   [10, 11, 16, 20],
#   [23, 30, 34, 50]
# ]
# Given target = 3, return true.

# param {Integer[][]} matrix
# param {Integer} target
# return {Boolean}

def search_matrix(matrix, target)
  matrix.flatten!

  l, r = 0, matrix.length - 1

  while l <= r
    mid = (l + r) / 2
    if matrix[mid] == target
      return true
    elsif matrix[mid] < target
      l = mid + 1
    else
      r = mid - 1
    end
  end

  false
end

# Time Complexity - O(log m * n)
# Space Complexity - O(1)
