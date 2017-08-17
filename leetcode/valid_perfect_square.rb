# Given a positive integer num, write a
# function which returns True if num is
# a perfect square else False.
#
# Note: Do not use any built-in library function such as sqrt.
#
# Example 1:
#   Input: 16
#   Output: True
#
# Example 2:
#   Input: 14
#   Output: False

# param {Integer} num
# return {Boolean}

def is_perfect_square(num)
  cur_n = 1

  while cur_n * cur_n <= num
    if cur_n * cur_n == num
      return true
    end

    cur_n += 1
  end

  false
end
