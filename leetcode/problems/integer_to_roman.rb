# Given an integer, convert it to a roman numeral.
#
# Input is guaranteed to be within the range from 1 to 3999.

# param {Integer} num
# return {String}

def int_to_roman(num)
  i = ['', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']
  x = ['', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC']
  c = ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM']
  m = ['', 'M', 'MM', 'MMM']

  m[num / 1000] + c[(num % 1000) / 100] + x[(num % 100) / 10] + i[num % 10]
end

# Time Complexity - O(1)
# Space Complexity - O(1)
