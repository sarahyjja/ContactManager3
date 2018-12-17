require 'contact_manager'

class CommandController

attr_reader :contact_manager

  def initialize
    @contact_manager = ContactManager.new()
  end

  def dispatch(info)
    # if info[0] == add_contact
    first_name = info[2]
    @contact_manager.create_new_contact(first_name)
    # if info[0] == list_contact
    # contact_manager.contacts
  end

end
