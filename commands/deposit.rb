def deposit(id)
    deposit = Account.where(number: id).first
    if deposit 
        puts Rainbow("Digit the Ammount of the deposit").underline
        print "Deposit: "
        money = gets.chomp.to_f
        if money<0
            puts "Impossible to deposit negative numbers"
            return
        end
      deposit.update(money: money + deposit.money, client_id: deposit.client_id )
      type = 'Deposit'
      Transfers.create(to_id: deposit.client_id ,from_id: deposit.client_id, money: money, type: type)

      if deposit.valid?
        puts Rainbow("Deposit successful!").green
      else
        puts Rainbow("Validation errors:").red
        puts deposit.errors.full_messages.join("\n")
      end
    else
      puts "Deposit Didn't Work"
    end
  end