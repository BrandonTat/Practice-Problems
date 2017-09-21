def firstDuplicate(a)
  seen = Hash.new

  a.each do |el|
    if seen[el]
      return el
    else
      seen[el] = true
    end
  end

  -1
end
