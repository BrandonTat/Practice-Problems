// Follow up for "Unique Paths":
//
// Now consider if some obstacles are added to the grids.
// How many unique paths would there be?
//
// An obstacle and empty space is marked as 1 and 0 respectively
// in the grid.
//
// For example,
// There is one obstacle in the middle of a 3x3 grid as illustrated below.
//
// [
//   [0,0,0],
//   [0,1,0],
//   [0,0,0]
// ]
// The total number of unique paths is 2.
//
// Note: m and n will be at most 100.

/**
 * @param {number[][]} obstacleGrid
 * @return {number}
 */

var uniquePathsWithObstacles = (obstacleGrid) => {
  let dp = [];

  let numRows = obstacleGrid.length;
  let numCols = obstacleGrid[0].length;

  for (let i = 0; i < numRows; i++) {
    dp.push([]);
    for (let j = 0; j < numCols; j++) {
      if (obstacleGrid[i][j] === 1) {
        dp[i][j] = 0;
      } else if (i === 0 && j === 0) {
        dp[i][j] = 1;
      } else if (i === 0) {
        dp[i][j] = dp[i][j - 1];
      } else if (j === 0) {
        dp[i][j] = dp[i - 1][j];
      } else {
        let prevRow = dp[i - 1][j];
        let prevCol = dp[i][j - 1];

        dp[i][j] = prevRow + prevCol;
      }
    }
  }

  return dp[dp.length - 1][dp[0].length - 1];
};
