# Write an algorithm to determine if a number is "happy".
#
# A happy number is a number defined by the following process:
#  Starting with any positive integer, replace the number by the
#  sum of the squares of its digits, and repeat the process until
#  the number equals 1 (where it will stay), or it loops endlessly
#  in a cycle which does not include 1. Those numbers for which
#  this process ends in 1 are happy numbers.
#
# Example: 19 is a happy number
#
#   12 + 92 = 82
#   82 + 22 = 68
#   62 + 82 = 100
#   12 + 02 + 02 = 1

# param {Integer} n
# return {Boolean}

def is_happy(n)
  seen = {}

  loop do
    seen[n] = true
    new_n = n.to_s.split("").map(&:to_i)

    n = new_n.map { |num| num * num }.inject(:+)

    if n == 1
      return true
    elsif seen[n]
      return false
    end
  end
end

# Time Complexity - O(n)
# Space Complexity - O(n)
