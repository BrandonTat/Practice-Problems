# Reverse a linked list from position m to n. Do it in-place and in one-pass.
#
# For example:
# Given 1->2->3->4->5->NULL, m = 2 and n = 4,
#
# return 1->4->3->2->5->NULL.
#
# Note:
# Given m, n satisfy the following condition:
# 1 ≤ m ≤ n ≤ length of list.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# param {ListNode} head
# param {Integer} m
# param {Integer} n
# return {ListNode}

def reverse_between(head, m, n)
  return head if head.nil? || m == n

  dummy = ListNode.new(nil)
  dummy.next = head
  prev, cur = dummy, head

  (m - 1).times { prev = cur; cur = cur.next }
  n1, n2 = prev, cur

  (n - m + 1).times do
    cur_next = cur.next
    cur.next = prev
    prev = cur
    cur = cur_next
  end

  n1.next = prev
  n2.next = cur

  dummy.next
end

# Time Complexity - O(n)
# Space Complexity - O(1)
