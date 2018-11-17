# Given a string S, return the "reversed" string where all characters that are not a letter stay in the same place, and all letters reverse their positions.
#
# Example 1:
#
# Input: "ab-cd"
# Output: "dc-ba"
# Example 2:
#
# Input: "a-bC-dEf-ghIj"
# Output: "j-Ih-gfE-dCba"
# Example 3:
#
# Input: "Test1ng-Leet=code-Q!"
# Output: "Qedo1ct-eeLg=ntse-T!"
#
#
# Note:
#
# S.length <= 100
# 33 <= S[i].ASCIIcode <= 122
# S doesn't contain \ or "

# @param {String} s
# @return {String}
def reverse_only_letters(s)
  alphabet = ('a'..'z').to_a

  letters_in_s = []

  (0...s.length).each do |i|
    letters_in_s << s[i] if alphabet.include?(s[i].downcase)
  end

  (0...s.length).each do |i|
    s[i] = letters_in_s.pop if alphabet.include?(s[i].downcase)
  end

  s
end

# Time Complexity = o(n), where n = number of letters in s
# Space Complexity = o(n), where n = number of letters in s
