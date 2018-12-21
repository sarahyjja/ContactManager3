require 'contact_manager'

class CommandController

attr_reader :contact_manager, :commands

  def initialize
    @contact_manager = ContactManager.new
    @commands = ["add_contact", "delete_contact", "modify_contact", "list_contacts"]
  end

  def dispatch(args)
    command = parse_command(args)
    attributes = parse_attributes(args)
    # p attributes
    if command == "add_contact"
   @contact_manager.create_new_contact(attributes["first_name"], attributes["last_name"])
   elsif command == "list_contacts"
     list = @contact_manager.read_file
     puts list
    end
  end

  def parse_command(args)
    command = args[0]
    p command
  end

  def parse_attributes(args)
    hash = {}
    array_without_command = args[1..-1]
    array_without_command.each_slice(2) do |attribute|
      dirty_key = attribute[0]
      clean_key = remove_dashes(dirty_key)
      value = attribute[1]
      hash[clean_key] = value
    end
    hash
  end

  def remove_dashes(string)
    if string.start_with?("-")
      string.delete("-")
    else
      string
    end
  end
end
