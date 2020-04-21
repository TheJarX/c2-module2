input = "Category, (Symbol) Price, Stock, Amount, Name
Sporting Goods, USD 49.99, true, 10, Football
Sporting Goods, PEN 9.99, true, 3, Baseball
Sporting Goods, ARS 29.99, false, 0, Basketball
Electronics, PEN 99.99, true, 5, iPod Touch
Electronics, USD 399.99, false, 0, iPhone 5
Electronics, PEN 199.99, true, 2, Nexus 7"

require "csv"

PEN_USD = 3.freeze
ARS_USD = 40.freeze

# Debido a que no sé si Ruby tiene una función para esto
def true?(obj)
  obj.to_s.downcase == "true"
end

def csv_to_hash(str)
  data = CSV.parse(str)
  # Obtenemos los headers, teniendo en cuenta que siempre
  # es el primer elemento que devuelve data (en caso incluyera headers)
  headers = data[0].map { |h| h.strip.to_sym } #convertimos cada key en symbol

  data_hash = data[1..data.length].map do |x|
    # https://apidock.com/ruby/Array/zip
    Hash[headers.zip(x.map { |el| el.strip })]
  end
end

def how_much(data)
  #Seleccionar los que tengan stock y luego sumar los precios
  data.select { |el| true?(el["Stock".to_sym]) }.inject(0) do |a, v|
    price = v["(Symbol) Price".to_sym]
    a + exchange(price)
  end.round(2)
end

# Solo para hacer la conversión
def exchange(value)
  value = value.split("\s")
  if value.first.to_sym == :PEN
    value.last.to_f / PEN_USD
  elsif value.first.to_sym == :ARS
    value.last.to_f / ARS_USD
  end

  value.last.to_f
end

p how_much(csv_to_hash(input))
