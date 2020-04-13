GASK = 8.314

def calculate_pressure(chemical_amount, temperature, volume)
	(chemical_amount * GASK * temperature) / volume
end

puts calculate_pressure(5, 500, 2)
