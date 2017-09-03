# Given an array of integers that is already sorted in
# ascending order, find two numbers such that they add
# up to a specific target number.
#
# The function twoSum should return indices of the two
# numbers such that they add up to the target, where
# index1 must be less than index2. Please note that your
# returned answers (both index1 and index2) are not zero-based.
#
# You may assume that each input would have exactly one solution
# and you may not use the same element twice.
#
# Input: numbers={2, 7, 11, 15}, target=9
# Output: index1=1, index2=2

# param {Integer[]} numbers
# param {Integer} target
# return {Integer[]}

def two_sum(numbers, target)
  be = 0
  en = numbers.length - 1

  while be < en
    cur = numbers[be] + numbers[en]

    if cur == target
      return [be + 1, en + 1]
    elsif cur < target
      be += 1
    else
      en -= 1
    end
  end
end

# Time Complexity - O(logn)
# Space Complexity - O(1)
