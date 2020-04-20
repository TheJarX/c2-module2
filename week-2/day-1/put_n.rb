def put_n(str, times)
  if !(times > 0 and times.is_a? Integer)
    raise ArgumentError.new("Second argument must be a positive Integer") 
  end
      
  times.times { puts str }
end
