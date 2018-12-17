require 'contact_manager'

class CommandParser

  def parse(info)
    contact_manager = ContactManager.new
    contact_manager.create_new_contact(info[2])
  end

end
