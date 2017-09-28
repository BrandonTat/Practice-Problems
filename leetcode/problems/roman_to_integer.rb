# Given a roman numeral, convert it to an integer.
#
# Input is guaranteed to be within the range from 1 to 3999.

# param {String} s
# return {Integer}

def roman_to_int(s)
  conversion = {
    "I" => 1, "V" => 5, "X" => 10,
    "L" => 50, "C" => 100, "D" => 500,
    "M" => 1000
  }

  result = 0

  (1...s.length).each do |i|
    if conversion[s[i - 1]] < conversion[s[i]]
      result -= conversion[s[i - 1]]
    else
      result += conversion[s[i - 1]]
    end
  end

  result += conversion[s[-1]]
end

# Time Complexity - O(n)
# Space Complexity - O(1)
