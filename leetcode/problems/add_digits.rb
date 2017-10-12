# Given a non-negative integer num, repeatedly add all
# its digits until the result has only one digit.
#
# For example:
#
# Given num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2.
# Since 2 has only one digit, return it.
#
# Follow up:
# Could you do it without any loop/recursion in O(1) runtime?

def add_digits(num)
  num.zero? ? 0 : 1 + (num - 1) % 9
end

# Time Complexity - O(1)
# Space Complexity - O(1)

def add_digits2(num)
  num_arr = num.to_s.chars.map(&:to_i)

  until num_arr.length == 1
    val = num_arr.inject(&:+)
    num_arr = val.to_s.chars.map(&:to_i)
  end

  num_arr.first
end

# Time Complexity - O(n)
# Space Complexity - O(n)
