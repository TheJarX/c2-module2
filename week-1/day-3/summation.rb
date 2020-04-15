def summation(n)
  sum = 0

  for i in 1..n
    sum += yield(i)
  end

  return sum
end
