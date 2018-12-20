require 'ui'
require 'stringio'

RSpec.describe UI do
  it 'list the commands if the user write ls' do
    input = StringIO.new("ls")
    output = StringIO.new
    ui = UI.new(input, output)

    ui.welcome

    expect(output.string).to match("add_contact")
  end

  it 'list all the commands if the user write ls' do
    input = StringIO.new("ls")
    output = StringIO.new
    ui = UI.new(input, output)

    ui.welcome

    expect(output.string).to include("add_contact", "delete_contact", "modify_contact", "list_contacts")
  end

end
