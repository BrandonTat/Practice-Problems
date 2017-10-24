// Given a collection of intervals, merge all overlapping intervals.
//
// For example,
// Given [1,3],[2,6],[8,10],[15,18],
// return [1,6],[8,10],[15,18].

/**
 * Definition for an interval.
 * function Interval(start, end) {
 *     this.start = start;
 *     this.end = end;
 * }
 */
/**
 * @param {Interval[]} intervals
 * @return {Interval[]}
 */

var merge = (intervals) => {
  let result = [];
  intervals.sort((a, b) => a.start - b.start);

  for (let i = 0; i < intervals.length; i++) {
    let curInterval = intervals[i];

    if (i === 0) {
      result.push(curInterval);
    } else if (curInterval.start >= result[result.length - 1].start &&
               curInterval.start <= result[result.length - 1].end) {
      let lastInterval = result[result.length - 1];
      let max = Math.max(lastInterval.end, curInterval.end);
      lastInterval.end = max;
    } else {
      result.push(curInterval);
    }
  }

  return result;
};
