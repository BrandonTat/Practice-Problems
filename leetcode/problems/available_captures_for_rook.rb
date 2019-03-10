# On an 8 x 8 chessboard, there is one white rook.  There also may be empty squares, white
# bishops, and black pawns. These are given as characters 'R', '.', 'B', and 'p' respectively.
# Uppercase characters represent white pieces, and lowercase characters represent black pieces.
#
# The rook moves as in the rules of Chess: it chooses one of four cardinal directions
# (north, east, west, and south), then moves in that direction until it chooses to stop,
# reaches the edge of the board, or captures an opposite colored pawn by moving to the
# same square it occupies.  Also, rooks cannot move into the same square as other friendly bishops.
#
# Return the number of pawns the rook can capture in one move.
#
#
# Example 1:
#
# Input: [
#   [".",".",".",".",".",".",".","."],
#   [".",".",".","p",".",".",".","."],
#   [".",".",".","R",".",".",".","p"],
#   [".",".",".",".",".",".",".","."],
#   [".",".",".",".",".",".",".","."],
#   [".",".",".","p",".",".",".","."],
#   [".",".",".",".",".",".",".","."],
#   [".",".",".",".",".",".",".","."]
# ]
#
# Output: 3
# Explanation:
# In this example the rook is able to capture all the pawns.
#
#
# Example 2:
#
# Input: [
#   [".",".",".",".",".",".",".","."],
#   [".","p","p","p","p","p",".","."],
#   [".","p","p","B","p","p",".","."],
#   [".","p","B","R","B","p",".","."],
#   [".","p","p","B","p","p",".","."],
#   [".","p","p","p","p","p",".","."],
#   [".",".",".",".",".",".",".","."],
#   [".",".",".",".",".",".",".","."]
# ]
#
# Output: 0
# Explanation:
# Bishops are blocking the rook to capture any pawn.
#
#
# Example 3:
#
# Input: [
#   [".",".",".",".",".",".",".","."],
#   [".",".",".","p",".",".",".","."],
#   [".",".",".","p",".",".",".","."],
#   ["p","p",".","R",".","p","B","."],
#   [".",".",".",".",".",".",".","."],
#   [".",".",".","B",".",".",".","."],
#   [".",".",".","p",".",".",".","."],
#   [".",".",".",".",".",".",".","."]
# ]
#
# Output: 3
# Explanation:
# The rook can capture the pawns at positions b5, d6 and f5.
#
#
# Note:
#
# board.length == board[i].length == 8
# board[i][j] is either 'R', '.', 'B', or 'p'
# There is exactly one cell with board[i][j] == 'R'

# @param {Character[][]} board
# @return {Integer}
def num_rook_captures(board)
  rook_x, rook_y = 0, 0
  number_of_pawns = 0

  (0...8).each do |row_index|
    (0...8).each do |col_index|
      if board[row_index][col_index] == 'R'
        rook_x, rook_y = row_index, col_index
      end
    end
  end

  spots = [[1, 0], [-1, 0], [0, 1], [0, -1]]

  spots.each do |spot|
    x = rook_x + spot[0]
    y = rook_y + spot[1]

    while x.between?(0, 7) && y.between?(0, 7)
      number_of_pawns += 1 if board[x][y] == 'p'
      break if board[x][y] != '.'

      x += spot[0]
      y += spot[1]
    end
  end

  number_of_pawns
end
