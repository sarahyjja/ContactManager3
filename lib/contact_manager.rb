require 'contact'

class ContactManager

  def create_new_contact(first_name)
    Contact.new(first_name)
  end
end
