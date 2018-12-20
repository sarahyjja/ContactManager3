require 'contact_manager'

class CommandController

attr_reader :contact_manager, :commands

  def initialize
    @contact_manager = ContactManager.new
    @commands = ["create_new_contact"]
  end

  def dispatch(args)
   command = parse_command(args)
   attributes = parse_attributes(args)
   p attributes
   @contact_manager.create_new_contact(attributes["first_name"], attributes["last_name"])
  end

  def parse_command(args)
    command = args[0]
    p command
  end

  # def commands 
  #   @commands
  # end

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
