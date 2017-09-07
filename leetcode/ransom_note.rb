# Given an arbitrary ransom note string and another string
# containing letters from all the magazines, write a function
# that will return true if the ransom note can be constructed
# from the magazines ; otherwise, it will return false.
#
# Each letter in the magazine string can only be used once
# in your ransom note.
#
# Note:
#   You may assume that both strings contain only lowercase letters.
#
# canConstruct("a", "b") -> false
# canConstruct("aa", "ab") -> false
# canConstruct("aa", "aab") -> true

# param {String} ransom_note
# param {String} magazine
# return {Boolean}

def can_construct(ransom_note, magazine)
  letters = {}

  magazine.each_char do |letter|
    if letters[letter]
      letters[letter] += 1
    else
      letters[letter] = 1
    end
  end

  ransom_note.each_char do |letter|
    if letters[letter] == 0
      return false
    elsif letters[letter]
      letters[letter] -= 1
    else
      return false
    end
  end

  true
end

# Time Complexity - O(m + n), m = magazine and n = ransome_note
# Space Complexity - O(m), m = magazine
