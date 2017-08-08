def move_zeroes(arr)
  return arr if arr.count < 2

  count = 0

  (0...arr.length).each do |i|
    if arr[i] != 0
      arr[count], arr[i] = arr[i], arr[count]
      count += 1
    end
  end

  arr
end
