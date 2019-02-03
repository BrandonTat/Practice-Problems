# Given two sequences pushed and popped with distinct values, return true if and
# only if this could have been the result of a sequence of push and pop operations
# on an initially empty stack.
#
# Example 1:
#
# Input: pushed = [1,2,3,4,5], popped = [4,5,3,2,1]
# Output: true
# Explanation: We might do the following sequence:
# push(1), push(2), push(3), push(4), pop() -> 4,
# push(5), pop() -> 5, pop() -> 3, pop() -> 2, pop() -> 1
# Example 2:
#
# Input: pushed = [1,2,3,4,5], popped = [4,3,5,1,2]
# Output: false
# Explanation: 1 cannot be popped before 2.
#
# Note:
#
# 0 <= pushed.length == popped.length <= 1000
# 0 <= pushed[i], popped[i] < 1000
# pushed is a permutation of popped.
# pushed and popped have distinct values.

# @param {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
  pushed_reverse = pushed.reverse
  popped_reverse = popped.reverse
  stack = []

  until popped_reverse.empty?
    if popped_reverse.last == stack.last
      stack.pop
      popped_reverse.pop
    elsif pushed_reverse.empty?
      return false
    else
      stack << pushed_reverse.pop
    end
  end

  true
end

# Time Complexity = O(n*m), where n = pushed.length and m = popped.length
# Space Complexity = O(n*m), where n = pushed.length and m = popped.length
