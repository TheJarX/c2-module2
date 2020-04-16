require_relative "contact_book"

run = true

book = ContactBook.new

loop {
  case book.get_option()
  when :add
    book.add
  when :display
    book.display
  when :update
    book.update
  when :delete
    book.delete
  when :exit
    puts "Bye :)"
    break
  else
    puts "I didn't understand you :/"
  end

  break if !run
}
