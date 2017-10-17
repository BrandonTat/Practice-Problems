# Find all possible combinations of k numbers that add up to a number n,
# given that only numbers from 1 to 9 can be used and each combination
# should be a unique set of numbers.
#
#
# Example 1:
#
# Input: k = 3, n = 7
#
# Output:
#
# [[1,2,4]]
#
# Example 2:
#
# Input: k = 3, n = 9
#
# Output:
#
# [[1,2,6], [1,3,5], [2,3,4]]

# param {Integer} k
# param {Integer} n
# return {Integer[][]}

def combination_sum3(k, n)
  values = (1..9).to_a
  result = []
  dfs_search(k, n, values, 0, [], result)
  result
end


def dfs_search(k, n, values, start_idx, cur, result)
  if k < 0 || n < 0
    return
  elsif k.zero? && n.zero?
    result << cur
    return
  else
    (start_idx...values.length).each do |i|
      cur_val = values[i]
      dfs_search(k - 1, n - cur_val, values, i + 1, cur + [cur_val], result)
    end
  end
end
