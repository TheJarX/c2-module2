def digital_root(n)
  return n if n.to_s.length <= 1
  digital_root(n.to_s.split("").reduce(0) { |a, v| a + v.to_i })
end
