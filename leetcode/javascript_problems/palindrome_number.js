// Determine whether an integer is a palindrome.
// Do this without extra space.

/**
 * @param {number} x
 * @return {boolean}
 */

var isPalindrome = (x) => {
  let xStr = x.toString();

  let l = 0;
  let r = xStr.length - 1;

  while (l <= r) {
    if (xStr[l] !== xStr[r]) {
      return false;
    }

    l ++;
    r --;
  }

  return true;
};
