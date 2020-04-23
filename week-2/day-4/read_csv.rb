require "csv"

=begin
Esta ser'ia la manera che'vere, pero el csv tiene algunos espacios extra o no se :/
table = CSV.parse(File.read("grades.csv"), headers: true)
p table
=end

# MODES
# :hash_content => return and hash with :headers and :body
# :array => return an array: array[0]-> headers, array[1] -> body
# :rows => return an array with the rows
# TODO: Implmentar :rows, :arr_objects y lo dema's
def csv_parse(filename, mode = :array)
  file = open(filename)
  content = file.read.split(/\n/).map { |el| el.strip.split(",").map(&:strip) }
  headers = content[0].map { |h| h.strip.undump }

  case mode
  when :hash_content
    { :headers => headers, :body => content[1..-1] }
  when :array
    [headers, content[1..-1]]
  when :rows
    []
  end
ensure
  file.close
end

# TODO: Terminar de implementear los otros modos
# ! De momento solo funciona cuando recibe un hash: { headers => [...], body => [[..][..]...] }
def csv_hash(data, special_type = :array)
  return "" if data.empty?
  data = data.is_a?(String) ? CSV.parse(str) : data
  headers_index = special_type == "array".to_sym ? 0 : "headers".to_sym

  # Obtenemos los headers
  headers = data[headers_index].map { |h| h.strip.to_sym } #convertimos cada key en symbol

  data_hash = special_type == "array".to_sym ? data : data["body".to_sym]
  #   p data_hash
  data_hash = data_hash.map do |x|
    # https://apidock.com/ruby/Array/zip
    x = x.map { |x|
      begin
        x.undump
      rescue RuntimeError => e
        x.to_f
      end
    }
    Hash[headers.zip(x)]
  end
end

# Aqui comienza el assigment formalmente
def top_3(data)
  top = data.sort_by { |student| -student[:"Final"] }[0, 3]
  top.size.times { |i|
    puts "#{i + 1} - #{top[i][:"First name"]} with a final grade of #{top[i][:Final]}"
  }
  nil
end

data = csv_hash(csv_parse("grades.csv", :hash_content), :hash)
top_3(data)
