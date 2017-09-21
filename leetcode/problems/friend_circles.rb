# There are N students in a class. Some of them are friends,
# while some are not. Their friendship is transitive in nature.
# For example, if A is a direct friend of B, and B is a direct
# friend of C, then A is an indirect friend of C. And we defined
# a friend circle is a group of students who are direct or
# indirect friends.
#
# Given a N*N matrix M representing the friend relationship between
# students in the class. If M[i][j] = 1, then the ith and jth
# students are direct friends with each other, otherwise not.
# And you have to output the total number of friend circles
# among all the students.
#
# Example 1:
# Input:
# [[1,1,0],
#  [1,1,0],
#  [0,0,1]]
#
# Output: 2
# Explanation:The 0th and 1st students are direct friends, so they are
# in a friend circle.
# The 2nd student himself is in a friend circle. So return 2.
#
# Example 2:
# Input:
# [[1,1,0],
#  [1,1,1],
#  [0,1,1]]
# Output: 1
# Explanation:The 0th and 1st students are direct friends, the 1st and
# 2nd students are direct friends, so the 0th and 2nd students are
# indirect friends. All of them are in the same friend circle, so return 1.
# Note:
# N is in range [1,200].
# M[i][i] = 1 for all students.
# If M[i][j] = 1, then M[j][i] = 1.

# param {Integer[][]} m
# return {Integer}

def find_circle_num(m)
  return 0 if m.empty?

  visited = Array.new(m.length, false)
  number_of_groups = 0

  (0...visited.length).each do |i|
    unless visited[i]
      dfs_search(m, visited, i)
      number_of_groups += 1
    end
  end

  number_of_groups
end

def dfs_search(m, visted, row_idx)
  (row_idx...m.length).each do |col_idx|
    if visted[row_idx][col_idx] == 1 && !visited[col_idx]
      visted[col_idx] = true
      dfs_search(m, visited, col_idx)
    end
  end
end

# Time Complexity = O(n^2)
# Space Complexity = O(n)
