// Given an array of integers, every element appears twice
// except for one. Find that single one.
//
// Note:
// Your algorithm should have a linear runtime complexity.
// Could you implement it without using extra memory?

/**
 * @param {number[]} nums
 * @return {number}
 */

var singleNumber = (nums) => {
  let counter = {};

  nums.forEach(num => {
    if (counter[num]) {
      counter[num] += 1;
    } else {
      counter[num] = 1;
    }
  });

  for (let i=0; i<nums.length; i++) {
    if (counter[nums[i]] === 1) {
      return nums[i];
    }
  }
};
