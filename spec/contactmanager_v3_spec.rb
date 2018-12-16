require 'contactmanager_3'

RSpec.describe ContactManager do
  it 'create a new contact' do

    new_contact = Contact.new("sarah")
    create_new_contact = new_contact

    expect(new_contact).to eq("sarah")
  end

  # it 'delete a contact' do
  #   word = Word.new('blackberry')
  #
  #   guessed_letters = word.guessed_letters
  #
  #   expect(guessed_letters).to eq(['_','_','_','_','_','_','_','_','_','_'])
  # end
  #
  # it 'modify a contact' do
  #   word = Word.new('hello')
  #
  #   word.add_guess('h')
  #   expect(word.guessed_letters).to eq (['h','_','_','_','_'])
  # end
  #
  #   it 'display a list of contact' do
  #     word = Word.new('hello')
  #
  #     word.add_guess('h')
  #     expect(word.guessed_letters).to eq (['h','_','_','_','_'])
  #   end

end
