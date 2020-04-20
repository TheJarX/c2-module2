def parts_sums(s)
  res = []
  sum = s.sum
  s.inject(sum) { |a, v|
    res << sum
    sum -= v
  }
  res << 0
end
