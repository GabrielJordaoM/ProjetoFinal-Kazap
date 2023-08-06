def edit_account(id)
    account = Account[id]
    if account 
        puts Rainbow("Edit Account").underline
        print "Number: "
        number = gets.chomp
      account.update(number: number, client_id: account.client_id )
      if account.valid?
        puts Rainbow("Account updated successfully!").green
      else
        puts Rainbow("Validation errors:").red
        puts account_id.errors.full_messages.join("\n")
      end
    else
      puts "Account not found"
    end
  end