// Write a function that takes a string as input and
// reverse only the vowels of a string.
//
// Example 1:
// Given s = "hello", return "holle".
//
// Example 2:
// Given s = "leetcode", return "leotcede".
//
// Note:
// The vowels does not include the letter "y".

/**
 * @param {string} s
 * @return {string}
 */

var reverseVowels = (s) => {
  let vowels = "aeiouAEIOU".split('');
  let wordArr = s.split('');
  let vowelsInWord = [];

  for (let i = 0; i < s.length; i++) {
    if (vowels.includes(s[i])) {
      vowelsInWord.push(s[i]);
    }
  }

  for (let i = 0; i < wordArr.length; i++) {
    if (vowels.includes(wordArr[i])) {
      wordArr[i] = vowelsInWord.pop();
    }
  }

  return vowelsInWord.join('');
};
