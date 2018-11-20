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
  return false if matrix.nil? || matrix.empty? || matrix.first.empty?

  bottom, top, row = 0, matrix.length - 1, 0

  while bottom <= top
    middle = (top + bottom) / 2

    if matrix[middle].first == target
      return true
    elsif matrix[middle].first < target
      row = middle
      bottom = middle + 1
    else
      top = middle - 1
    end
  end

  left, right = 0, matrix[middle].length - 1

  while left <= right
    middle = (right + left) / 2

    if matrix[row][middle] == target
      return true
    elsif matrix[row][middle] < target
      left = middle + 1
    else
      right = middle - 1
    end
  end

  false
end

# Time Complexity - O(log m * log n)
# Space Complexity - O(1)
