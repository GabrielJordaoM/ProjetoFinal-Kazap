def withdraw(id)
    withdraw = Account.where(number: id).first
    if withdraw 
        puts Rainbow("Digit the Ammount of the withdraw ").underline
        print "withdraw: "
        money = gets.chomp.to_f
        if money > 0 && withdraw.money >= money
          if withdraw.money < 0 && withdraw.money >= -100
            puts "Are you sure you want to enter in overdraft? you have #{Rainbow(withdraw.where(number: id).first).red}? (yes/no)"
            confirmation = gets.chomp.downcase
          else
            puts "Impossible to withdraw beyond overdraft"
          end
            
            withdraw.update(money: withdraw.money - money, client_id: withdraw.client_id )
            type = "Withdraw"
            Transfers.create(to_id: withdraw.client_id ,from_id: withdraw.client_id, money: money, type: type)

            if withdraw.valid?
              puts Rainbow("withdraw successful!").green
            else
              puts Rainbow("Validation errors:").red
              puts withdraw.errors.full_messages.join("\n")
            end
        else
            puts "Impossible to withdraw negative to numbers"
        end
    else
      puts "withdraw Didn't Work"
    end
  end