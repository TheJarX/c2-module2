class TestPast
  def self.parts_sums(ls)
    ls.reduce([ls.sum]) { |sums, x| sums << sums.last - x }
  end

  def self.digital_root(n)
    return n if n.to_s.length <= 1
    digital_root(n.to_s.split("").reduce(0) { |a, v| a + v.to_i })
  end

  def self.map(array)
    block_given? ? array.inject([]) { |a, v| a << yield(v) } : array
  end

  def self.max(arr)
    len = arr.length
    max = 0

    if len < 2
      return arr[0]
    elsif len == 2
      if arr[0] < arr[1]
        max = arr[1]
      else
        max = arr[0]
      end
    else
      max1 = max(arr[0...(len / 2)])
      max2 = max(arr[(len / 2)..len])
      max = max([max1, max2])
    end
    return max
  end

  def self.min(arr)
    len = arr.length
    min = 0

    if len < 2
      return arr[0]
    elsif len == 2
      if arr[0] > arr[1]
        min = arr[1]
      else
        min = arr[0]
      end
    else
      min1 = min(arr[0...(len / 2)])
      min2 = min(arr[(len / 2)..len])
      min = min([min1, min2])
    end
    return min
  end
end

class Square
  def initialize(side)
    @side = side
  end

  def area
    @side ** 2
  end

  def perimeter
    @side * 4
  end
end
