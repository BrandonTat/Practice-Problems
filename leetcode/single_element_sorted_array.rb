def single_non_duplicate(nums)
  (0...nums.size).step(2).each do |i|
    return nums[i] if nums[i] != nums[i + 1]
  end
end
