# Where:
# b is the current balance
# r is the interest rate
def calc_interest(b, r)
	b += (b * (r / 100))
end

print "Amount deposited: "
balance = gets.chomp.to_f

print "Interest rate per months (%): "
rate = gets.chomp.to_f

printf "Periods to accumulate interest: "
period = gets.chomp.to_i


i = 0

while i < period
	balance = calc_interest(balance, rate)
	i += 1
end 

puts balance.round(1)



