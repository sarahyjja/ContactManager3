require 'contact_manager'

RSpec.describe ContactManager do

  it 'create a new contact' do
    contact_manager = ContactManager.new
    new_contact = contact_manager.create_new_contact("sarah")

  expect(new_contact.first_name).to eq("sarah")
  end
end
