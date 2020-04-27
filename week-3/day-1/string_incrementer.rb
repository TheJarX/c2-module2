=begin 
#codewars
def increment_string(input)
  input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
end
=end

#My solution :sad-pepe:
def increment_string(input)
  num = (input.scan(/\d+$/).join.to_i + 1).to_s
  word = input.scan(/\w+[^\d+]/).join
  diff = input.size - (word + num).size 
  
  diff < 0 ? word + num : word + "0" * diff + num
end
