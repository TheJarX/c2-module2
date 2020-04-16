def array_of_fixnums?(array)
  return array.all? { |x| x.is_a? Fixnum }
end
