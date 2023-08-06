require 'sequel'
require 'rainbow'

Sequel.sqlite('db/bank.db')

require_relative 'models/account'
require_relative 'models/client'
require_relative 'models/trasfer'
require_relative 'commands/create_client'
require_relative 'commands/edit_client'
require_relative 'commands/delete_client'
require_relative 'commands/create_account'
require_relative 'commands/edit_account'
require_relative 'commands/delete_account'
require_relative 'commands/deposit'
require_relative 'commands/withdraw'
require_relative 'commands/transfer'
require_relative 'commands/show_extract'

def list_clients
    @clients = Client[id]
    puts Rainbow("Client:").underline
    @clients.each { |client| puts "- #{Rainbow(client).yellow}" }
end


# Main loop for the console application
loop do
  puts Rainbow("\nOptions:").blue
  puts Rainbow("1. Deposit").green
  puts Rainbow("2. Withdaw").green
  puts Rainbow("3. Transfer").green
  puts Rainbow("4. Extract").green
  puts Rainbow("5. Create Client").green
  puts Rainbow("6. Edit Client").green
  puts Rainbow("7. Create Account").green
  puts Rainbow("8. Edit Account").green
  puts Rainbow("9. Delete Account").green
  puts Rainbow("10. Exit").red.bright.underline
  
  print Rainbow("Enter your choice: ").yellow
  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Enter the Number of the Account to Deposit:"
    id = gets.chomp.to_i
    deposit(id)
  when 2
    puts "Enter the Number of the Account to Withdraw:"
    id = gets.chomp
    withdraw(id)
  when 3
    puts "Enter the Number of the Account THAT WILL TRANSFER :"
    id = gets.chomp
    puts "Enter the Number of the Account THAT WILLL RECIVE THE TRANSFER:"
    id2 = gets.chomp
    transfer(id,id2)
  when 4
    puts "voce tem tantos dinheiros "
  when 5
    create_client
  when 6
    print "Enter the ID of the client to edit: "
    id = gets.chomp.to_i
    edit_client(id)
  when 7
    create_account
  when 8
    print "Enter the ID of the client to edit Account: "
    id = gets.chomp.to_i
    edit_account(id)
  when 9
    print "Enter the ID of the Account to delete it: "
    id = gets.chomp.to_i
    delete_account(id)
  when 10
    puts Rainbow("Thanks for the preference!").pink
    exit
  else
    puts "Invalid choice. Please try again."
  end
end





