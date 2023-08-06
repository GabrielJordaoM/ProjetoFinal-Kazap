def delete_account(id)
    account = Account[id]
    if account
      puts Rainbow("Delete Account").underline
      puts "Are you sure you want to delete the Account n-#{Rainbow(account.number).red}? (yes/no)"
      confirmation = gets.chomp.downcase
      if confirmation == 'yes'
        account.destroy
        puts Rainbow("Account deleted successfully!").green
      else
        puts "Account not deleted."
      end
    else
      puts "Account not found"
    end
  end