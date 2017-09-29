# Given a non-negative integer represented as a non-empty
# array of digits, plus one to the integer.
#
# You may assume the integer do not contain any leading zero,
#   except the number 0 itself.
#
# The digits are stored such that the most significant digit
# is at the head of the list.

# param {Integer[]} digits
# return {Integer[]}

def plus_one(digits)
  digits[-1] += 1

  (digits.length - 1).downto(1).each do |i|
    break if digits[i] != 10

    digits[i] = 0
    digits[i - 1] += 1
  end

  digits.first == 10 ? (digits[0] = 1; digits.push(0)) : digits
end

# Time Complexity - O(n)
# Space Complexity - O(1)
