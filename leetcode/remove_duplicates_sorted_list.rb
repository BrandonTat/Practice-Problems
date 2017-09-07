# Given a sorted linked list, delete all duplicates
# such that each element appear only once.
#
# For example,
# Given 1->1->2, return 1->2.
# Given 1->1->2->3->3, return 1->2->3.

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

def delete_duplicates(head)
  return head if head.nil? || head.next.nil?

  cur = head

  until cur.nil?
    if cur.next.nil?
      break
    elsif cur.val == cur.next.val
      cur.next = cur.next.next
    else
      cur = cur.next
    end
  end

  head
end

# Time Complexity - O(n)
# Space Complexity - O(1)
