# You are given two non-empty linked lists representing two non-negative
# integers. The digits are stored in reverse order and each of their
# nodes contain a single digit. Add the two numbers and return it as a
# linked list.
#
# You may assume the two numbers do not contain any leading zero,
# except the number 0 itself.
#
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8

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

def add_two_numbers(l1, l2)
  p1, p2, p3, l3, carry = l1, l2, nil, nil, 0

  while p1 || p2
    p1 ? (v1 = p1.val; p1 = p1.next) : v1 = 0
    p2 ? (v2 = p2.val; p2 = p2.next) : v2 = 0

    sum = v1 + v2 + carry
    carry = sum / 10
    v3 = sum % 10

    cur_node = ListNode.new(v3)
    p3 ? (p3.next = cur_node; p3 = cur_node) : (p3 = cur_node; l3 = p3)
  end

  p3.next = ListNode.new(carry) if carry != 0

  l3
end
