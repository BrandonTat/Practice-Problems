# Given a string, determine if it is a palindrome,
# considering only alphanumeric characters and ignoring cases.
#
# For example,
# "A man, a plan, a canal: Panama" is a palindrome.
# "race a car" is not a palindrome.
#
# Note:
# Have you consider that the string might be empty? This is a
# good question to ask during an interview.
#
# For the purpose of this problem, we define empty string as
# valid palindrome.

# param {String} s
# return {Boolean}

def is_palindrome(s)
  alphanumeric = ('a'..'z').to_a + ('0'..'9').to_a
  valid_s = ""

  s.downcase.each_char do |c|
    valid_s += c if alphanumeric.include?(c)
  end

  valid_s == valid_s.reverse
end

# Time Complexity - O(n * m)
# Space Complexity - O(n)
