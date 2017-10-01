# Given a non-empty string s, you may delete at most one character.
# Judge whether you can make it a palindrome.
#
# Example 1:
#   Input: "aba"
#   Output: True
# Example 2:
#   Input: "abca"
#   Output: True
#   Explanation: You could delete the character 'c'.
#
# Note:
# The string will only contain lowercase characters a-z.
# The maximum length of the string is 50000.

# @aram {String} s
# return {Boolean}

def valid_palindrome(s)
  l, r = 0, s.length - 1

  while l < r
    if s[l] != s[r]
      return is_palindrome?(s, l + 1, r) || is_palindrome?(s, l, r - 1)
    end

    l += 1
    r -= 1
  end

  true
end


def is_palindrome?(s, l, r)
  while l < r
    return false if s[l] != s[r]
    l += 1
    r -= 1
  end

  true
end
