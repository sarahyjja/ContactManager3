require 'contact_manager'

RSpec.describe ContactManager do

  it 'create a new contact' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("sarah")
    contact = contact_manager.contacts[0]

    expect(contact.first_name).to eq("sarah")
  end

  it 'display a list of contacts' do
    contact_manager = ContactManager.new

    contact_manager.create_new_contact("sarah")
    contact_manager.create_new_contact("bob")
    contact_manager.create_new_contact("dylan")

    #expect(contact_manager.list_contacts).to eq(list)
    expect(contact_manager.contacts[0].first_name).to eq("sarah")
  end
end
