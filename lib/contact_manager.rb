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
