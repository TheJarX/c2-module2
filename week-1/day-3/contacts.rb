def show_menu()
  print "=" * 40
  print "\n"
  puts "What would you like to do?"
  puts "-- Type 'add' to add a contact."
  puts "-- Type 'update' to update a contact."
  puts "-- Type 'display' to display all contacts."
  puts "-- Type 'delete' to delete a contact."
  puts "-- Type 'exit' to exit."
  print "=" * 40
  print "\n"
end

run = true

contacts = {
Gregg: 32342334,
Sam: 4123423532,
Paul: 2123423424
}


while run 
  show_menu()
  choice = gets.chomp.downcase
  
  case choice
  when 'exit'
      run = false
  when 'add'
    puts "Contact name:"
    name = gets.chomp
    if contacts[name.to_sym].nil?
      puts "What is their phone number?"
      phone = gets.chomp
      contacts[name.to_sym] = phone.to_i
      puts "#{name} has been added with phone number #{phone}."
    else
      puts "Contact already exists! Their phone number is #{contacts[name.to_sym]}."
    end
  when 'update'
    puts "What contact do you want to update?"
    name = gets.chomp
    if contacts[name.to_sym].nil?
      puts "Contact not found!"
    else
      puts "What's the new phone number?"
      phone = gets.chomp
      contacts[name.to_sym] = phone.to_i
      puts "#{name} has been updated with new phone number #{phone}."
    end
  when 'display'
    if contacts.empty?
        puts "No contacts to show, try adding a new contact using \"add\""
    end
    contacts.each do |contact, phone|
      puts "#{contact}: #{phone}"
    end
  when 'delete'
    puts "What contact do you want to delete?"
    name = gets.chomp
    if contacts[name.to_sym].nil?
      puts "Contact not found!"
    else
      contacts.delete(name.to_sym)
      puts "#{name} has been removed."
    end
  else
    puts "Sorry, I didn't understand you."
  end
end