// Given an array of integers, 1 ≤ a[i] ≤ n (n = size of array),
// some elements appear twice and others appear once.
//
// Find all the elements that appear twice in this array.
//
// Could you do it without extra space and in O(n) runtime?
//
// Example:
// Input:
// [4,3,2,7,8,2,3,1]
//
// Output:
// [2,3]

/**
 * @param {number[]} nums
 * @return {number[]}
 */

var findDuplicates = function(nums) {
  let result = [];

  nums.forEach(num => {
    let index = Math.abs(num) - 1;

    if (nums[index] < 0) {
      result.push(Math.abs(num));
    } else {
      nums[index] *= -1;
    }
  });

  return result;
};

// Time Complexity - O(n)
// Space Complexity - O(1)
