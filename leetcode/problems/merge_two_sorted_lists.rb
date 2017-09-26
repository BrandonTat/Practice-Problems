# Merge two sorted linked lists and return it as a new list.
# The new list should be made by splicing together the nodes
# of the first two lists.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# param {ListNode} l1
# param {ListNode} l2
# return {ListNode}

def merge_two_lists(l1, l2)
  return l1 || l2 unless l1 && l2

  l1, l2 = l2, l1 unless l1.val < l2.val
  l3, l1 = l1, l1.next

  p3 = l3

  while l1 && l2
    if l1.val < l2.val
      p3.next = l1
      l1 = l1.next
    else
      p3.next = l2
      l2 = l2.next
    end

    p3 = p3.next
  end

  p3.next = l1 || l2

  l3
end

# Time Complexity - O(n + m)
# Space Complexity - O(n + m)
