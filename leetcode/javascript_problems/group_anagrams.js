/**
 * @param {string[]} strs
 * @return {string[][]}
 */

var groupAnagrams = (strs) => {
  let anagrams = {};

  strs.forEach(str => {
    let letters = str.split('').sort().join('');

    if (anagrams[letters]) {
      anagrams[letters].push(str);
    } else {
      anagrams[letters] = [str];
    }
  });

  return Object.values(anagrams);
};
