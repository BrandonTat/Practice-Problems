# Given a 2D board and a word, find if the word exists in the grid.
#
# The word can be constructed from letters of sequentially
# adjacent cell, where "adjacent" cells are those horizontally
# or vertically neighboring. The same letter cell may not be
# used more than once.
#
# For example,
#   Given board =
#
# [
#   ['A','B','C','E'],
#   ['S','F','C','S'],
#   ['A','D','E','E']
# ]
# word = "ABCCED", -> returns true,
# word = "SEE", -> returns true,
# word = "ABCB", -> returns false.

# param {Character[][]} board
# param {String} word
# return {Boolean}

def exist(board, word)
  row_length = board.length
  col_length = board.first.length

  (0...row_length).each do |row_idx|
    (0...col_length).each do |col_idx|
      return true if dfs_search(board, row_idx, col_idx, word)
    end
  end

  false
end

def dfs_search(board, row_idx, col_idx, word)
  return true if word.length == 0

  row_length = board.length
  col_length = board.first.length

  if row_idx < 0 || row_idx >= row_length || col_idx < 0 ||
     col_idx >= col_length || word[0] != board[row_idx][col_idx]

    return false
  end

  temp = board[row_idx][col_idx]
  board[row_idx][col_idx] = "#"

  res = dfs_search(board, row_idx - 1, col_idx, word[1..-1]) ||
        dfs_search(board, row_idx + 1, col_idx, word[1..-1]) ||
        dfs_search(board, row_idx, col_idx - 1, word[1..-1]) ||
        dfs_search(board, row_idx, col_idx + 1, word[1..-1])

  board[row_idx][col_idx] = temp
  res
end

# Time Complexity O(n*m)
# Space Complexity O(1)
