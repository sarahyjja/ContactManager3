# require 'ui'
# require 'stringio'
#
# RSpec.describe UI do
#   it 'list the commands if the user write ls' do
#     input = StringIO.new("ls")
#     output = StringIO.new
#     ui = UI.new(input, output)
#
#     ui.list_your_files
#
#     expect(output.string).to match("add_contact")
#   end
#
#   it 'list all the commands if the user write ls' do
#     input = StringIO.new("ls")
#     output = StringIO.new
#     ui = UI.new(input, output)
#
#     ui.list_your_files
#
#     expect(output.string).to include("add_contact", "delete_contact", "modify_contact", "list_contacts")
#   end
#
#   it 'select the right directory if the commands is cd+command' do
#     input = StringIO.new("cd add_contact")
#     output = StringIO.new
#     ui = UI.new(input, output)
#
#     ui.directory
#
#     expect(output.string).to eq("cd add_contact")
#   end
#
# end
