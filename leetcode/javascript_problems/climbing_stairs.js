// You are climbing a stair case. It takes n steps to reach to the top.
//
// Each time you can either climb 1 or 2 steps. In how many distinct
// ways can you climb to the top?
//
// Note: Given n will be a positive integer.

/**
 * @param {number} n
 * @return {number}
 */
var climbStairs = function(n) {
  let cache = new Map();

  cache.set(0, 1);
  cache.set(1, 1);

  for (let i = 2; i <= n; i++) {
    let v1 = cache.get(i - 1);
    let v2 = cache.get(i - 2);

    cache.set(i, v1 + v2);
  }

  return cache.get(n);
};

// Time Complexity - O(n);
// Space Complexity - O(n);
