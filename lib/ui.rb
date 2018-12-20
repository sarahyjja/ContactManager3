require 'command_controller'

class UI
attr_accessor :command_controller
# this class will interact with the command_controller class to be display on my controller .
def initialize(input = $stdin, output = $stdout)
  @command_controller = CommandController.new
  @output = output
  @input = input
end


def welcome
  @output.puts "HEY HEY"
  @output.puts "Give your commands in command line"
  user_input = @input.gets.chomp
  if user_input == "ls"
    @command_controller.commands.each do |command|
    @output.puts command
   end
end

end

end
