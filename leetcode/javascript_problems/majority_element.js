// Given an array of size n, find the majority element.
// The majority element is the element that appears more than ⌊ n/2 ⌋ times.
//
// You may assume that the array is non-empty and the majority element
// always exist in the array.

var majorityElement = (nums) => {
  let numsCount = {};
  let majority = Math.floor(nums.length / 2);

  for (let i = 0; i < nums.length; i++) {
    let num = nums[i];

    if (numsCount[num]) {
      numsCount[num] += 1;
    } else {
      numsCount[num] = 1;
    }

    if (numsCount[num] > majority) {
      return num;
    }
  }

  return -1;
};
