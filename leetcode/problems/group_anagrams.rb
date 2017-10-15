# Given an array of strings, group anagrams together.
#
# For example, given: ["eat", "tea", "tan", "ate", "nat", "bat"],
# Return:
#
# [
#   ["ate", "eat","tea"],
#   ["nat","tan"],
#   ["bat"]
# ]
# Note: All inputs will be in lower-case.
# param {String[]} strs
# return {String[][]}
def group_anagrams(strs)
  anagrams = Hash.new { |h, k| h[k] = [] }

  strs.each do |str|
    sort = str.split("").sort
    anagrams[sort] << str
  end

  anagrams.values
end

# Time Complexity - O(n), n = number of strs
# Space Complexity - O(n), n = number of strs
