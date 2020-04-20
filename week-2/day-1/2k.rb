require "prime"

class String
  def to_2000
    self.split(" ").map { |w|
      word = ""
      w.length.times do |i|
        if i % 2 == 0 && w[i].upcase.ord < 91 && w[i].upcase.ord > 64
          word << w[i].upcase
        else
          word << w[i]
        end
      end
      word
    }.join(" ")
  end
end

puts "Hola, como estas?".to_2000
puts "Porque escribes de esa manera?".to_2000
puts "What is wrong with you?".to_2000
