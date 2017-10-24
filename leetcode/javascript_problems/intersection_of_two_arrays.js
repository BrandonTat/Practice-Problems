// Given two arrays, write a function to compute their intersection.
//
// Example:
// Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].
//
// Note:
// Each element in the result must be unique.
// The result can be in any order.

/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number[]}
 */

var intersection = (nums1, nums2) => {
  let result = new Set();

  nums1.sort((a, b) => a - b);
  nums2.sort((a, b) => a - b);

  let n1 = 0;
  let n2 = 0;

  while (n1 < nums1.length && n2 < nums2.length) {
    if (nums1[n1] === nums2[n2]) {
      result.add(nums1[n1]);
      n1 ++;
      n2 ++;
    } else if (nums1[n1] < nums2[n2]) {
      n1 ++;
    } else {
      n2 ++;
    }
  }

  return Array.from(result);
};
