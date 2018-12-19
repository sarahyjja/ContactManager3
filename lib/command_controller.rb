require 'contact_manager'

class CommandController

attr_reader :contact_manager

  def initialize
    @contact_manager = ContactManager.new
  end

  def dispatch(args)
    @contact_manager.create_new_contact(args[2])
  end
end
