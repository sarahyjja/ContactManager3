# require 'command_controller'
#
# class UI
# attr_accessor :command_controller
# # this class will interact with the command_controller class to be display on my controller .
# def initialize(input = $stdin, output = $stdout)
#   @command_controller = CommandController.new
#   @output = output
#   @input = input
# end
#
#
# def welcome
#   @output.puts "HEY HEY"
#   @output.puts "Give your commands in command line"
# end
#
# def list_your_files
#   user_input = @input.gets.chomp
#
#   if user_input == "ls"
#     @command_controller.commands.each do |command|
#       @output.puts command
#     end
#   else
#   end
# end
#
#   def directory
#     user_input = @input.gets.chomp
#
#     @command_controller.commands.select do |command|
#     if user_input == "cd" + command
#         @output.puts command
#       end
#
#   end
# end
# end
