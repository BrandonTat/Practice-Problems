// Given two arrays, write a function to compute their intersection.
//
// Example:
// Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].
//
// Note:
// Each element in the result should appear as many times as it
// shows in both arrays.
// The result can be in any order.
// Follow up:
// What if the given array is already sorted? How would you
//   optimize your algorithm?
// What if nums1's size is small compared to nums2's size?
//   Which algorithm is better?
// What if elements of nums2 are stored on disk, and the memory is
//   limited such that you cannot load all elements into the memory at once?

/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number[]}
 */
var intersect = (nums1, nums2) => {
  let intersection = [];
  let n1 = 0;
  let n2 = 0;
  nums1.sort((a, b) => a - b);
  nums2.sort((a, b) => a - b);

  while (n1 < nums1.length && n2 < nums2.length) {
    if (nums1[n1] === nums2[n2]) {
      intersection.push(nums1[n1]);
      n1 += 1;
      n2 += 1;
    } else if (nums1[n1] < nums2[n2]) {
      n1 += 1;
    } else {
      n2 += 1;
    }
  }

  return intersection;
};
