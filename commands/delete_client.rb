def delete_user(id)
    client = Client[id]
    if client
      puts Rainbow("Delete Client").underline
      puts "Are you sure you want to delete the Client #{Rainbow(client.name).red}? (yes/no)"
      confirmation = gets.chomp.downcase
      if confirmation == 'yes'
        client.destroy
        puts Rainbow("Client deleted successfully!").green
      else
        puts "Client not deleted."
      end
    else
      puts "Client not found"
    end
  end