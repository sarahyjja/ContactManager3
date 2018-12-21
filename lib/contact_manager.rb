require 'contact'
require 'json'
require 'ostruct'

class ContactManager
  def initialize
    @contacts = []
  end

  def create_new_contact(first_name, last_name)
    contact = Contact.new(first_name, last_name)
    @contacts << contact
    p @contacts
    new_hash = convert_object_into_hash
    contacts_json = JSON.generate(new_hash)
    save_to_file(contacts_json)
  end

  def convert_object_into_hash
    hash = {}
    new_hash = @contacts.map do |contact|
      {first_name: contact.first_name, last_name: contact.last_name}
    end
  end

  def save_to_file(content)
    f = File.open('./lib/contacts.json', 'w')
    f.write(content)
    p content
    f.close
  end

   def read_file
     json = File.read('./lib/contacts.json')
     hash = JSON.parse(json)
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
