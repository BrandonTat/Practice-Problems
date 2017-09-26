# Given a collection of intervals, merge all overlapping intervals.
#
# For example,
# Given [1,3],[2,6],[8,10],[15,18],
# return [1,6],[8,10],[15,18].

# Definition for an interval.
# class Interval
#     attr_accessor :start, :end
#     def initialize(s=0, e=0)
#         @start = s
#         @end = e
#     end
# end

# param {Interval[]} intervals
# return {Interval[]}

def merge(intervals)
  return [] if intervals.empty?

  sorted_intervals = intervals.sort_by { |interval| interval.start }
  result = [sorted_intervals.first]

  (1...sorted_intervals.length).each do |i|
    prev_interval = result[-1]
    interval = sorted_intervals[i]

    if interval.start.between?(prev_interval.start, prev_interval.end)
      prev_interval.end = [prev_interval.end, interval.end].max
    else
      result << interval
    end
  end

  result
end

# Time Complexity - O(nlogn)
# Space Complexity - O(n)
