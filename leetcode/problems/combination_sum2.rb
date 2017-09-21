# Given a collection of candidate numbers (C) and a target number (T),
# find all unique combinations in C where the candidate numbers sums to T.
#
# Each number in C may only be used once in the combination.
#
# Note:
# All numbers (including target) will be positive integers.
# The solution set must not contain duplicate combinations.
# For example, given candidate set [10, 1, 2, 7, 6, 1, 5] and target 8,
# A solution set is:
# [
#   [1, 7],
#   [1, 2, 5],
#   [2, 6],
#   [1, 1, 6]
# ]

# param {Integer[]} candidates
# param {Integer} target
# return {Integer[][]}

def combination_sum2(candidates, target)
  result = []
  sorted = candidates.sort

  dfs_search(sorted, target, 0, [], result)

  result
end


def dfs_search(candidates, target, start_idx, cur_sub, result)
  if target < 0
    return
  elsif target.zero?
    result << cur_sub
  else
    (start_idx...candidates.length).each do |i|
      if i > start_idx && candidates[i] == candidates[i - 1]
        next
      end
      
      cur_val = candidates[i]
      dfs_search(candidates, target - cur_val, i + 1, cur_sub + [cur_val], result)
    end
  end
end
