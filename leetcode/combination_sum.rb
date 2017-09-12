# Given a set of candidate numbers (C) (without duplicates)
# and a target number (T), find all unique combinations in
# C where the candidate numbers sums to T.
#
# The same repeated number may be chosen from C unlimited number of times.
#
# Note:
#   All numbers (including target) will be positive integers.
#   The solution set must not contain duplicate combinations.
#   For example, given candidate set [2, 3, 6, 7] and target 7,
#
# A solution set is:
# [
#   [7],
#   [2, 2, 3]
# ]

# param {Integer[]} candidates
# param {Integer} target
# return {Integer[][]}

def combination_sum(candidates, target)
  result = []

  dfs_search(candidates, target, 0, [], result)

  result
end

def dfs_search(candidates, target, start_idx, cur_sub, result)
  if target < 0
    return
  elsif target.zero?
    result << cur_sub
  else
    (start_idx...candidates.length).each do |i|
      cur_val = candidates[i]
      new_sub = cur_sub + [cur_val]
      dfs_search(candidates, target - cur_val, i, new_sub, result)
    end
  end
end
