def longest_palindrome(s)
  return s if s.size <= 1 || s == s.reverse

  longest = s[0]
  length = s.size

  (1...length).each do |i|
    low = i - 1
    high = i

    while low >= 0 && high < length && s[low] == s[high]
      cur = s[low..high]
      longest = cur if cur.size > longest.size
      low -= 1
      high += 1
    end

    low = i - 1
    high = i + 1

    while low >= 0 && high < length && s[low] == s[high]
      cur = s[low..high]
      longest = cur if cur.size > longest.size
      low -= 1
      high += 1
    end
  end

  longest
end
