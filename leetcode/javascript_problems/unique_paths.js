// A robot is located at the top-left corner of a m x n grid
// (marked 'Start' in the diagram below).
//
// The robot can only move either down or right at any point in time.
// The robot is trying to reach the bottom-right corner of the grid
// (marked 'Finish' in the diagram below).
//
// How many possible unique paths are there?
//
//
// Above is a 3 x 7 grid. How many possible unique paths are there?
//
// Note: m and n will be at most 100.

/**
 * @param {number} m
 * @param {number} n
 * @return {number}
 */

var uniquePaths = (m, n) => {
  let dp = [];

  for (let i=0; i<m; i++) {
    dp.push([]);
    for (let j=0; j<n; j++) {
      if (i === 0 || j === 0) {
        dp[i][j] = 1;
      } else {
        let prevRow = dp[i - 1][j];
        let prevCol = dp[i][j - 1];

        dp[i][j] = prevRow + prevCol;
      }
    }
  }

  return dp[dp.length - 1][dp[0].length - 1];
};
