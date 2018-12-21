require 'contact_manager'
require 'json'

RSpec.describe ContactManager do

  it 'create a new contact' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("sarah", "kara")
    contact = contact_manager.contacts[0]

    expect(contact.first_name).to eq("sarah")
  end

  it 'display a list of contacts' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("sarah", "kara")
    contact_manager.create_new_contact("bob", "l'eponge")
    contact_manager.create_new_contact("dylan", "beverlyhills")

    #expect(contact_manager.list_contacts).to eq(list)
    expect(contact_manager.contacts[0].first_name).to eq("sarah")
  end

  it 'delete a contact' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("bob", "l'eponge")
    contact_manager.create_new_contact("dylan", "beverlyhills")

    contact_manager.delete("dylan")

    expect(contact_manager.contacts.length).to eq(1)
  end

  it 'modify a contact' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("bob", "l'eponge")

    contact_manager.replace_with("bob", "marie")

    expect(contact_manager.contacts[0].first_name).to eq("marie")
  end

  it 'find a contact by first_name' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("helen", "etlesgarcons")
    contact_manager.create_new_contact("justyna", "zygmunt")
    contact_manager.create_new_contact("alex", "andra")

    contact_found = contact_manager.find_by("alex")

    expect(contact_found.first_name).to eq("alex")
  end

  it 'add 25£ to each contact' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("eddy", "murphy")
    contact_manager.create_new_contact("charles", "barclays")
    contact_manager.create_new_contact("louise", "attaque")

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
    contact_manager.create_new_contact("eddy", "murphy")
    contact_manager.create_new_contact("charles", "barclays")
    contact_manager.create_new_contact("louise", "attaque")
    eddy_money = contact_manager.contacts[0].balance

    updated_contact = contact_manager.add_money_by_name("eddy", 75)

    expect(updated_contact.balance).to eq(eddy_money+75)

  end

  it 'create a contact with a last name' do
    contact_manager = ContactManager.new
    contact_manager.create_new_contact("eddy", "curau")

    expect(contact_manager.contacts[0].last_name).to eq("curau")
  end
end
