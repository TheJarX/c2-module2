require_relative "put_n.rb"

begin
  puts "What do you want to echo?"
  str = gets.chomp

  puts "What do you want to echo?"
  times = gets.chomp.to_i

  put_n(str, times)
rescue ArgumentError => e
  puts "I don't understand how many times do you want to echo the string!"
  retry
end
