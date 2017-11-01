// Given a non-negative integer num, repeatedly add all its digits
// until the result has only one digit.
//
// For example:
//
// Given num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2.
// Since 2 has only one digit, return it.
//
// Follow up:
// Could you do it without any loop/recursion in O(1) runtime?

/**
 * @param {number} num
 * @return {number}
 */

var addDigits = function(num) {
  while (num >= 10) {
    let nArr = num.toString().split('').map(n => parseInt(n));
    num = nArr.reduce((sum, value) => sum + value, 0);
  }

  return num;
};
