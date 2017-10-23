// Given a m x n matrix, if an element is 0, set its
// entire row and column to 0. Do it in place.

/**
 * @param {number[][]} matrix
 * @return {void} Do not return anything, modify matrix in-place instead.
 */
var setZeroes = (matrix) => {
  let numRows = matrix.length;
  let numCols = matrix[0].length;

  let rows = new Set();
  let cols = new Set();

  for (let i=0; i<numRows; i++) {
    for (let j=0; j<numCols; j++) {
      if (matrix[i][j] === 0) {
          rows.add(i);
          cols.add(j);
      }
    }
  }

  for (let i=0; i<numRows; i++) {
    for (let j=0; j<numCols; j++) {
      if (rows.has(i) || cols.has(j)) {
        matrix[i][j] = 0;
      }
    }
  }
};
