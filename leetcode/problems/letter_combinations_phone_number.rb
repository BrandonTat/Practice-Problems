# Given a digit string, return all possible letter combinations
# that the number could represent.
#
# A mapping of digit to letters (just like on the telephone buttons)
# is given below.
#
# Input: Digit string "23"
# Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
# Note:
#   Although the above answer is in lexicographical order,
#   your answer could be in any order you want.

# param {String} digits
# return {String[]}
def letter_combinations(digits)
  number_mapping = {
    '1' => '', '2' => 'abc', '3' => 'def',
    '4' => 'ghi', '5' => 'jkl', '6' => 'mno',
    '7' => 'pqrs', '8' => 'tuv', '9' => 'wxyz',
    '0' => ''
  }

  return [] if digits.empty?
  return number_mapping[digits].chars if digits.length == 1

  letters = digits.chars.map {|digit| number_mapping[digit]}
  letters.map(&:chars).reduce(&:product).map(&:join)
end