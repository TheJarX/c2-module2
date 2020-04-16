class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    if block_given?
      initial_value + sum_array(@array.map { |x| yield(x) })
    else
      initial_value + sum_array(@array)
    end
  end

  def sum_array(arr)
    arr.inject(0) { |sum, x| sum + x }
  end
end
