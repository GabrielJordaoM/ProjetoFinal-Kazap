def edit_client(id)
    client = Client[id]
    if client
      puts Rainbow("Edit Client").underline
      print "Name (current: #{Rainbow(client.name).yellow}): "
      name = gets.chomp
      print "document (current: #{Rainbow(client.document).yellow}): "
      document = gets.chomp
      print "adress (current: #{Rainbow(client.adress).yellow}): "
      adress = gets.chomp
      print "phone (current: #{Rainbow(client.phone).yellow}): "
      phone = gets.chomp
      client.update(name: name, document: document, adress: adress, phone: phone)
      if client.valid?
        puts Rainbow("Client updated successfully!").green
      else
        puts Rainbow("Validation errors:").red
        puts client.errors.full_messages.join("\n")
      end
    else
      puts "client not found"
    end
  end