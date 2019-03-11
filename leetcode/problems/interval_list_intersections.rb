# Given two lists of closed intervals, each list of intervals is pairwise disjoint
# and in sorted order.
#
# Return the intersection of these two interval lists.
#
# (Formally, a closed interval [a, b] (with a <= b) denotes the set of real numbers
# x with a <= x <= b.  The intersection of two closed intervals is a set of real
# numbers that is either empty, or can be represented as a closed interval.
# For example, the intersection of [1, 3] and [2, 4] is [2, 3].)
#
#
# Example 1:
#
# Input: A = [[0,2],[5,10],[13,23],[24,25]], B = [[1,5],[8,12],[15,24],[25,26]]
# Output: [[1,2],[5,5],[8,10],[15,23],[24,24],[25,25]]
# Reminder: The inputs and the desired output are lists of Interval objects,
# and not arrays or lists.
#
#
# Note:
#
# 0 <= A.length < 1000
# 0 <= B.length < 1000
# 0 <= A[i].start, A[i].end, B[i].start, B[i].end < 10^9

# Definition for an interval.
# class Interval
#     attr_accessor :start, :end
#     def initialize(s=0, e=0)
#         @start = s
#         @end = e
#     end
# end

# @param {Interval[]} a
# @param {Interval[]} b
# @return {Interval[]}
def interval_intersection(a, b)
  intersections = []
  a_pointer, b_pointer = 0, 0

  while a_pointer < a.length && b_pointer < b.length
    cur_a, cur_b = a[a_pointer], b[b_pointer]

    if cur_a.end < cur_b.start
      a_pointer += 1
    elsif cur_b.end < cur_a.start
      b_pointer += 1
    else
      start = [cur_a.start, cur_b.start].max
      last = [cur_a.end, cur_b.end].min
      intersections << Interval.new(start, last)

      if last == cur_a.end
        a_pointer += 1
      else
        b_pointer += 1
      end
    end
  end

  intersections
end
