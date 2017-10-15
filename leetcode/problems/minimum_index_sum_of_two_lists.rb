# Suppose Andy and Doris want to choose a restaurant for dinner, and they
# both have a list of favorite restaurants represented by strings.
#
# You need to help them find out their common interest with the least
# list index sum. If there is a choice tie between answers, output all
# of them with no order requirement. You could assume there always
# exists an answer.
#
# Example 1:
# Input:
# ["Shogun", "Tapioca Express", "Burger King", "KFC"]
# ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
# Output: ["Shogun"]
# Explanation: The only restaurant they both like is "Shogun".
# Example 2:
# Input:
# ["Shogun", "Tapioca Express", "Burger King", "KFC"]
# ["KFC", "Shogun", "Burger King"]
# Output: ["Shogun"]
# Explanation: The restaurant they both like and have the least index
#   sum is "Shogun" with index sum 1 (0+1).
# Note:
# The length of both lists will be in the range of [1, 1000].
# The length of strings in both lists will be in the range of [1, 30].
# The index is starting from 0 to the list length minus 1.
# No duplicates in both lists.

# param {String[]} list1
# param {String[]} list2
# return {String[]}

def find_restaurant(list1, list2)
  best = []
  min_sum = 1.0 / 0.0

  list1.each_with_index do |el1, i|
    list2.each_with_index do |el2, j|
      if el1 == el2
        if i + j < min_sum
          best = [el1]
          min_sum = i + j
        elsif i + j == min_sum
          best << el1
        end
      end
    end
  end

  best
end

# Time Complexity - O(m * n)
# Space Complexity - O(1)
