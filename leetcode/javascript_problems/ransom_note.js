// Given an arbitrary ransom note string and another string containing
// letters from all the magazines, write a function that will return
// true if the ransom note can be constructed from the magazines;
// otherwise, it will return false.
//
// Each letter in the magazine string can only be used once in your
// ransom note.
//
// Note:
// You may assume that both strings contain only lowercase letters.
//
// canConstruct("a", "b") -> false
// canConstruct("aa", "ab") -> false
// canConstruct("aa", "aab") -> true

/**
 * @param {string} ransomNote
 * @param {string} magazine
 * @return {boolean}
 */

var canConstruct = (ransomNote, magazine) => {
  let magazineLetters  = {};

  for (let i=0; i<magazine.length; i++) {
    let c = magazine[i];

    if (magazineLetters[c]) {
      magazineLetters[c] += 1;
    } else {
      magazineLetters[c] = 1;
    }
  }

  for (let i=0; i<ransomNote.length; i++) {
    let c = ransomNote[i];

    if (magazineLetters[c] && magazineLetters[c] !== 0) {
      magazineLetters[c] -= 1;
    } else {
      return false;
    }
  }

  return true;
};
