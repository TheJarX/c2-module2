class Array
   def sum
       self.inject(0) {|a, v| a + v}
   end    
end

class SumParts
  def self.parts_sums(ls)
    ls.reduce([ls.sum]) { |sums, x| sums << sums.last - x }
  end
end
