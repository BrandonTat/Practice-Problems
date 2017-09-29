# Reverse digits of an integer.
#
# Example1: x = 123, return 321
# Example2: x = -123, return -321
#
# click to show spoilers.
#
# Note:
# The input is assumed to be a 32-bit signed integer.
# Your function should return 0 when the reversed integer overflows.

# param {Integer} x
# return {Integer}

INT_BIT = 32
INT_MAX =  2 ** (INT_BIT - 1) - 1

def reverse(x)
  result, x_remaining = 0, x.abs

  while x_remaining > 0
    result = result * 10 + x_remaining % 10
    x_remaining /= 10
  end

  result = x < 0 ? -result : result

  if result < 0
    result < -INT_MAX ? 0 : result
  else
    result > INT_MAX ? 0 : result
  end
end

# Time Complexity - O(n)
# Space Complexity - O(1)
