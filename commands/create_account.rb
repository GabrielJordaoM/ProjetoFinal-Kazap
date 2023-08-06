def create_account
    puts Rainbow("Create a New Account").underline
    print "Number: "
    number = gets.chomp
    puts Rainbow("Digit the Client id: ").underline
    client_id = gets.chomp.to_i

    if Client[client_id] 
      account = Account.create(number: number, client_id: client_id)
      if account.valid?
        puts Rainbow("Account created successfully!").green
      else
        puts Rainbow("Validation errors:").red
        puts account.errors.full_messages.join("\n")
      end
    else
      puts "Client Not Found"
    end
  end