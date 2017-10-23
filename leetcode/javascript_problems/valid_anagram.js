// Given two strings s and t, write a function to determine if
// t is an anagram of s.
//
// For example,
// s = "anagram", t = "nagaram", return true.
// s = "rat", t = "car", return false.
//
// Note:
// You may assume the string contains only lowercase alphabets.
//
// Follow up:
// What if the inputs contain unicode characters? How would you adapt
// your solution to such case?

/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isAnagram = (s, t) => {
  let sLetters = s.split('').sort().join('');
  let tLetters = t.split('').sort().join('');

  return sLetters === tLetters;
};
