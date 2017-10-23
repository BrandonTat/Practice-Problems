// Given a string containing just the characters '(', ')', '{', '}', '['
// and ']', determine if the input string is valid.
//
// The brackets must close in the correct order, "()" and "()[]{}" are
// all valid but "(]" and "([)]" are not.

var isValid = (s) => {
  let parentheses = {
    ')' : '(',
    ']' : '[',
    '}' : '{'
  };

  let chars = [];

  for (let i = 0; i < s.length; i++) {
    let c = s[i];
    if (parentheses[c]) {
      if (chars.length === 0 || chars.pop() !== parentheses[c]) {
        return false;
      }
    } else {
      chars.push(c);
    }
  }

  return chars.length === 0;
};
