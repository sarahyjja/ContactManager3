require 'command_controller'

RSpec.describe CommandController do

  it 'creates new contact Sarah' do
    controller = CommandController.new
    controller.dispatch(["create_contact", "-first_name", "sarah", "-last_name", "kara"])

    expect(controller.contact_manager.contacts[0].first_name).to eq "sarah"
  end

  it 'creates new contact Andrew' do
    controller = CommandController.new
    controller.dispatch(["create_contact", "-first_name", "andrew", "-last_name", "kara"])

    expect(controller.contact_manager.contacts[0].first_name).to eq "andrew"
  end

  it ' ' do
    controller = CommandController.new
    controller.dispatch(["create_contact", "-last_name", "kara", "-first_name", "andrew"])
    p controller.contact_manager.contacts

    expect(controller.contact_manager.contacts[0].first_name).to eq ("andrew")
    expect(controller.contact_manager.contacts[0].last_name).to eq ("kara")
  end
end
