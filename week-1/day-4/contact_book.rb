require_relative "contact"

class ContactBook
  def initialize()
    @contacts = []
  end

  def add()
    print "Contact name:\s"
    name = gets.chomp.to_sym.capitalize

    print "Contact phone number:\s"
    phone = gets.chomp.to_sym

    contact = Contact.new(name, phone)
    @contacts << contact

    decorator {
      puts "\"#{name}\" has been added with phone #{phone}"
    }
  end

  def display()
    decorator {
      if @contacts.empty?
        print("NO CONTACTS TO SHOW")
      end

      @contacts.each { |c| puts "=> #{c.get_name}: #{c.get_phone}" }
    }
  end

  def update()
    print "Name: "
    name = gets.chomp.to_sym.capitalize

    print "New phone number: "
    phone = gets.chomp

    # select returns an array
    res = @contacts.select { |c| c.get_name == name }

    decorator {
      if res.empty?
        puts "Contact not found"
      else
        res[0].set_phone!(phone)
        puts "\"#{name}\" phone number has been updated to #{phone}"
      end
    }
  end

  def delete()
    print "Name: "
    name = gets.chomp.to_sym.capitalize

    # Get the current length of @contacts
    currentlen = @contacts.length

    decorator {
      #chage the current array
      @contacts.select! { |c| c.get_name != name }

      if currentlen == @contacts.length
        puts "Contact not found"
      else
        puts "\"#{name}\" has been deleted"
      end
    }
  end

  def decorator()
    # print "\n" + "\#" * 40 + "\n"
    print "\n"
    yield
    print "\#" * 40 + "\n"
  end

  def show_menu()
    puts "What would you like to do?"
    puts "-- Type 'add' to add a contact."
    puts "-- Type 'update' to update a contact."
    puts "-- Type 'display' to display all contacts."
    puts "-- Type 'delete' to delete a contact."
    puts "-- Type 'exit' to exit."
  end

  def get_option()
    decorator {
      show_menu()
    }
    gets.chomp.strip.to_sym
  end
end
