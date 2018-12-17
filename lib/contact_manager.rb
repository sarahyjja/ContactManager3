require 'contact'

class ContactManager
  def initialize
    @contacts = []
  end

  def create_new_contact(first_name)
    @contacts << Contact.new(first_name)
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
end
