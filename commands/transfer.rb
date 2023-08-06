
def transfer(id,id2)
    account = Account.where(number: id).first
    account2 = Account.where(number: id2).first
    if account && account2
        puts Rainbow("Digit the Ammount of the trasnfer").underline
        print "Transfer: "
        money = gets.chomp.to_f
        if money<0
            puts "Impossible to trasnfer negative numbers"
            return
        end
        puts "What type of trasfer do you want? (PIX/DOC)"
        type = gets.chomp.upcase
        if type == 'PIX'
          puts Rainbow("Pix Send!").green
        elsif type == 'TED'
          puts Rainbow("TED Send!").green
        end

        account.update(money: account.money - money, client_id: account.client_id)
        account2.update(money: money + account2.money, client_id: account2.client_id)
        
        account = Transfers.create(from_id: account.id , to_id: account2.id, money: money, type: type)

        if account.valid? && account2.valid?
            puts Rainbow("Transfer successful!").green
          else
            puts Rainbow("Validation errors:").red
            puts transfer.errors.full_messages.join("\n")
            puts transfer2.errors.full_messages.join("\n")
          end
    else
      puts "One of the accounts is incorrect"
    end
  end