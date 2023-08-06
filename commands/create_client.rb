def create_client
    puts Rainbow("Create a New client").underline
    print "Name: "
    name = gets.chomp
    print "document: "
    document = gets.chomp
    print "Adress: "
    adress = gets.chomp
    print "Phone: "
    phone = gets.chomp
    client = Client.create(name: name, document: document, adress: adress, phone: phone)
    if client.valid?
      puts Rainbow("client created successfully!").green
    else
      puts Rainbow("Validation errors:").red
      puts client.errors.full_messages.join("\n")
    end
  end