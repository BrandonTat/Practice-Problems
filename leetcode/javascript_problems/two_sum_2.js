// Given an array of integers that is already sorted in ascending order,
// find two numbers such that they add up to a specific target number.
//
// The function twoSum should return indices of the two numbers such that
// they add up to the target, where index1 must be less than index2.
// Please note that your returned answers (both index1 and index2) are
// not zero-based.
//
// You may assume that each input would have exactly one solution and you
// may not use the same element twice.
//
// Input: numbers={2, 7, 11, 15}, target=9
// Output: index1=1, index2=2

/**
 * @param {number[]} numbers
 * @param {number} target
 * @return {number[]}
 */

var twoSum = (numbers, target) => {
  let l = 0;
  let r = numbers.length - 1;

  while (l < r) {
    let cur = numbers[l] + numbers[r];

    if (cur === target) {
      return [l + 1, r + 1];
    } else if (cur < target) {
      l ++;
    } else {
      r --;
    }
  }

  return null;
};

// Time Complexity - O(n)
// Space Complexity - O(1)
