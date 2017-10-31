// Write a function that takes an unsigned integer and returns the
// number of ’1' bits it has (also known as the Hamming weight).
//
// For example, the 32-bit integer ’11' has binary representation
// 00000000000000000000000000001011, so the function should return 3.

/**
 * @param {number} n - a positive integer
 * @return {number}
 */

var hammingWeight = (n) => {
  let nStr = n.toString(2);
  let oneCount = 0;

  for (let i = 0; i < nStr.length; i++) {
    if (nStr[i] === '1') {
      oneCount ++;
    }
  }

  return oneCount;
};

// Time Complexity - O(n)
// Space Complexity - O(n)
// n = number of bits
