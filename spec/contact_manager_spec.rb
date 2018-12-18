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

  it 'delete a contact' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("bob")
    contact_manager.create_new_contact("dylan")

    contact_manager.delete("dylan")

    expect(contact_manager.contacts.length).to eq(1)
  end

  it 'modify a contact' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("bob")

    contact_manager.replace_with("bob", "marie")

    expect(contact_manager.contacts[0].first_name).to eq("marie")
  end

  it 'find a contact by first_name' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("helen")
    contact_manager.create_new_contact("justyna")
    contact_manager.create_new_contact("alex")

    contact_found = contact_manager.find_by("alex")

    expect(contact_found.first_name).to eq("alex")
  end

  it 'add 25£ to each contact' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("eddy")
    contact_manager.create_new_contact("charles")
    contact_manager.create_new_contact("louise")

    contact_manager.add_money_to_everyone(25)

    contact_manager.contacts.each { |contact|
      expect(contact.balance).to eq(125)
    }
    # expect(contact_manager.contacts[0].balance).to eq(125)
    # expect(contact_manager.contacts[1].balance).to eq(125)
    # expect(contact_manager.contacts[2].balance).to eq(125)
  end

  it 'add money by name. If you start with "c" add 100, otherwise minus 50' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("eddy")
    contact_manager.create_new_contact("charles")
    contact_manager.create_new_contact("louise")
    eddy_money = contact_manager.contacts[0].balance

    updated_contact = contact_manager.add_money_by_name("eddy", 75)

    expect(updated_contact.balance).to eq(eddy_money+75)

  end
end
