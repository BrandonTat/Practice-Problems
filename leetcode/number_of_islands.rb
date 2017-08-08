def num_islands(grid)
  return 0 if grid.empty?

  count = 0

  (0...grid.length).each do |i|
    (0...grid[i].length).each do |j|
      if grid[i][j] == '1'
        mark_sides(i, j, grid)
        count += 1
      end
    end
  end
end


def mark_sides(i, j, map)
  map[i][j] = "*"

  row_len = map.length - 1
  col_len = map[0].length - 1
  sides = [-1, 0], [1, 0], [0, -1], [0, 1]

  sides.each do |side|
    new_row = i + side[0]
    new_col = j + side[1]

    if new_row.between?(0, row_len) && new_col.between?(0, col_len) && map[new_row][new_col] == 1
      mark_sides(new_row, new_col, map)
    end
  end
end
