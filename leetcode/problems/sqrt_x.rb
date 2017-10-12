# Implement int sqrt(int x).
#
# Compute and return the square root of x.

# param {Integer} x
# return {Integer}

def my_sqrt(x)
  l, r = 0, x

  while l <= r
    mid = (l + r) / 2
    mid_squared = mid * mid

    if mid_squared == x
      return mid
    elsif mid_squared < x
      l = mid + 1
    else
      r = mid - 1
    end
  end

  l - 1
end
