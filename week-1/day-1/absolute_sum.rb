print "First number: "
n1 = gets.chomp.to_i

print "Second number: "
n2 = gets.chomp.to_i

# Entendí mal el assignment lmao, menos mal pude darme cuenta
sum = n1 + n2

if sum < 0
#Por identidad multiplicativa
  sum *= (-1)


puts "#{sum}"
