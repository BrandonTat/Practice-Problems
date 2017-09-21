def single_number(nums)
  res = 0
  nums.each { |num| res ^= num }
  res
end
