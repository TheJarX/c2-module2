def sum(*nums)
  sum = 0

  nums.each do |n|
    sum += n
  end

  return sum
end
