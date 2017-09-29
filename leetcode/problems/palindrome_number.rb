# Determine whether an integer is a palindrome. Do this without extra space.

# param {Integer} x
# return {Boolean}

def is_palindrome(x)
  return false if x < 0

  result, x_remaining = 0, x

  while x_remaining > 0
    result = result * 10 + x_remaining % 10
    x_remaining /= 10
  end

  result == x
end

# Time Complexity - O(n)
# Space Complexity - O(1)
