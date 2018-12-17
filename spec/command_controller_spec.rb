require 'command_controller'

RSpec.describe CommandController do

  it 'calls create new contact ' do
    input = ["add_contact", "-first_name", "sarah"]
    command_controller = CommandController.new
    command_controller.dispatch(input)
    expect(command_controller.contact_manager.contacts[0].first_name).to eq("sarah")
  end
end
