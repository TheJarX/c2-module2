sum = 0

print "First number: "
n1 = gets.chomp.to_i

print "Second number: "
n2 = gets.chomp.to_i


=begin 
Para poder controlar los siguientes casos:
"n1 negativo o n2 negativo"
n1 negativo y n2 positivo
n1 positivo y n2 negativo

n1 negativo y n2 negativo
=end
if n1 < 0
   n1 = n + ((n1) ** 2)
end 

if n2 < 0
   n2 = n2 + ((n2) ** 2)
end

sum = n1 + n2

puts "#{sum}"
