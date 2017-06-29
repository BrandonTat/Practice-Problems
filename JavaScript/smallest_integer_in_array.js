const assert = require('assert');

function smallestIntegers(args) {
  let min = args[0];

  for (let i=1; i<args.length; i++) {
    if (min > args[i]) { min = args[i]; }
  }

  return min;
}

console.log(smallestIntegers([78, 56, 232, 12, 8]) === 8);
console.log(smallestIntegers([78,56,232,12,18]) === 12);
console.log(smallestIntegers([78,56,232,412,228]) === 56);
console.log(smallestIntegers([78,56,232,12,0]) === 0);
console.log(smallestIntegers([1,56,232,12,8]) === 1);
