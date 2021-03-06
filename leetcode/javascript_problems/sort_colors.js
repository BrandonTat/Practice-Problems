// Given an array with n objects colored red, white or blue, sort them so
// that objects of the same color are adjacent, with the colors in the
// order red, white and blue.
//
// Here, we will use the integers 0, 1, and 2 to represent the color red,
// white, and blue respectively.
//
// Note:
// You are not suppose to use the library's sort function for this problem.

/**
 * @param {number[]} nums
 * @return {void} Do not return anything, modify nums in-place instead.
 */

var sortColors = (nums) => {
  let red = 0;

  for (let i = 0; i < nums.length; i++) {
    if (nums[i] === 0) {
      let temp = nums[red];
      nums[red] = nums[i];
      nums[i] = temp;
      red ++;
    }
  }

  let white = red;

  for (let i = white; i < nums.length; i++) {
    if (nums[i] === 1) {
      let temp = nums[white];
      nums[white] = nums[i];
      nums[i] = temp;
      white ++;
    }
  }
};
