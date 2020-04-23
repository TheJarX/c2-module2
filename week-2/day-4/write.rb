puts "What's your name?"
name = gets.chomp

open('write_name.txt', 'w') { |f|
  f.puts name
}

puts "Writing your name to a file..."
