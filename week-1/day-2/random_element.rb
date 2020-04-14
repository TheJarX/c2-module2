def random_select(array, n)
  random = []
  until n == 0
    idx = rand(array.length - 1)
    random.push(array[idx])
    n -= 1
  end

  random
end
