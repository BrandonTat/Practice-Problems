# Write a function that takes a string as input and
# reverse only the vowels of a string.
#
# Example 1:
# Given s = "hello", return "holle".
#
# Example 2:
# Given s = "leetcode", return "leotcede".
#
# Note:
# The vowels does not include the letter "y".

# param {String} s
# return {String}

def reverse_vowels(s)
  l, r = 0, s.length - 1

  while l < r
    while l < r && !"aeiou".include?(s[l].downcase)
      l += 1
    end

    while l < r && !"aeiou".include?(s[r].downcase)
      r -= 1
    end

    s[l], s[r] = s[r], s[l]
    l += 1
    r -= 1
  end

  s
end
