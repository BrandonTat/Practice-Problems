def is_valid(s)
  valid = {
    ')' => '(',
    '}' => '{',
    ']' => '['
  }

  seen = []

  s.each_char do |c|
    if valid.key?(c)
      return false if seen.empty? || seen.pop != valid[c]
    else
      seen.push(c)
    end
  end

  seen.empty? ? true : false
end
