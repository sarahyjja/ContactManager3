require 'ui'
require 'stringio'

RSpec.describe UI do
  it 'list the commands if the user write ls ' do
    input = StringIO.new("ls")
    output = StringIO.new
    ui = UI.new(input, output)

    ui.welcome

    expect(output.string).to match("create_new_contact")
  end
end
