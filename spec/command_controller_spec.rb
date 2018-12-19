require 'command_controller'

RSpec.describe CommandController do

  it 'creates new contact Sarah' do
    controller = CommandController.new
    controller.dispatch(["create_contact", "-first_name", "sarah"])

    expect(controller.contact_manager.contacts[0].first_name).to eq "sarah"
  end

  it 'creates new contact Andrew' do
    controller = CommandController.new
    controller.dispatch(["create_contact", "-first_name", "andrew"])

    expect(controller.contact_manager.contacts[0].first_name).to eq "andrew"
  end
end
