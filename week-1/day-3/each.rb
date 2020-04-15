def each(arr)
  arr.length.times do |i|
    yield(arr[i])
  end
end
