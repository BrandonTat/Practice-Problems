# You are climbing a stair case. It takes n steps to reach to the top.
#
# Each time you can either climb 1 or 2 steps. In how many
# distinct ways can you climb to the top?
#
# Note: Given n will be a positive integer.

# param {Integer} n
# return {Integer}

def climb_stairs(n)
  cache = {
    0 => 0,
    1 => 1,
    2 => 2
  }

  return cache[n] if n <= 2

  (3..n).each do |i|
    cache[i] = cache[i - 1] + cache[i - 2]
  end

  cache[n]
end

# Time Complexity - O(n)
# Space Complexity - O(n)
