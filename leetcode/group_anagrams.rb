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
  anagrams = {}

  strs.each do |str|
    sort = str.split("").sort
    if anagrams[sort]
      anagrams[sort].push(str)
    else
      anagrams[sort] = [str]
    end
  end

  anagrams.values
end
