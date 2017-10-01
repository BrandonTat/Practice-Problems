# Reverse a singly linked list.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# param {ListNode} head
# return {ListNode}

def reverse_list(head)
  values = []

  p1 = head

  while p1
    values << p1.val
    p1 = p1.next
  end

  p2 = head
  while p2
    p2.val = values.pop
    p2 = p2.next
  end

  head
end

# Time Complexity - O(n)
# Space Complexity - O(n)
