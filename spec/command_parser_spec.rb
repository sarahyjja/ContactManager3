require 'command_parser'

RSpec.describe CommandParser do

  it 'transform an array to create a new contact' do
    input = ["add_contact", "-first_name", "sarah"]
    command_parser = CommandParser.new
    contact = command_parser.parse(input)
    expect(contact.first_name).to eq("sarah")
  end
end
