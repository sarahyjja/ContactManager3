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
end
