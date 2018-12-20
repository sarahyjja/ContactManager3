require 'contact'

class ContactManager
  def initialize
    @contacts = []
  end

  def create_new_contact(first_name, last_name)
    @contacts << Contact.new(first_name, last_name)
  end

  def contacts
    @contacts
  end

  def delete(first_name)
    @contacts.map { |contact|
      if contact.first_name == first_name
        @contacts.delete(contact)
      end
    }
  end

  def replace_with(name_to_replace, new_name)
    @contacts.each { |contact|
      if contact.first_name == name_to_replace
        contact.first_name = new_name
      end
    }
  end

  def find_by(first_name)
    @contacts.each { |contact|
      if contact.first_name == first_name
        return contact
      end
    }
  end

   # def save_contacts
   #  open_file = File.open('./lib/agenda.json','w') do |file|
   #     file << @contacts
   #     p @contacts
   #   end
   #  # open_file.close
   #  end


   def open_file
      File.open('./lib/agenda.json')
    end

   def write_file
   #   the_file = []
   #   File.write('./lib/agenda.json') do |file|
   #     the_file << file
   #   end
   #   the_file_json = the_file.json
   # end

     File.write('./lib/agenda.json', 'w') do |file|
       file << @contacts
     end
   end


   def read_file
     File.read('./lib/agenda.json','r')
   end

   def save_contacts
     open_file
     write_file
     # File.close
   end

   def show_contacts
     open_file
     read_file
   end

  def add_money_to_everyone(amount)
    @contacts.each { |contact|
      contact.balance += amount
    }
  end

  def add_money_by_name(name, amount)
    @contacts.each { |contact|
      if contact.first_name == name
        contact.balance += amount
        return contact
      end
    }
  end

end
