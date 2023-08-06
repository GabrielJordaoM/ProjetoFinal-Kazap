 require 'json'
 require 'csv'
 def print_transfer_list(transfers,account)
    puts Rainbow('Transfer Extract:').yellow.bold
    transfers.each do |transfer|
      origin = transfer.from_account == account ? 'You' :transfer.from_account.number
      destination = transfer.to_account == account ? 'You' :transfer.from_account.number

      puts Rainbow("Date/Time: #{transfer.created_at}, Type: #{transfer.type}, Ammount: #{transfer.money}   Origin account number:#{origin}   Destination account number:#{destination}").green
    end
  end


def show_extract(number)
        account = Account.where(number: number).first
          if account
            transfers = Transfers.where(Sequel.|({ from_id: account.id }, { to_id: account.id })).order(:created_at)
        
            print_transfer_list(transfers,account)
            prompt_download_format(transfers)
          end
        end

          
          def prompt_download_format(transfers)
              puts Rainbow('Choose the download format (CSV/JSON)').yellow.bold
              format = gets.chomp.downcase
          
              case format
              when 'csv'
                download_csv(transfers)
              when 'json'
                download_json(transfers)
              else
                puts Rainbow('Invalid format selected. Please choose CSV or JSON.').red.bold
                prompt_download_format(transfers)
              end
            end
          
            def download_csv(transfers)
              csv_data = CSV.generate(headers: true) do |csv|
                csv << ['Date/Time', 'Type', 'Value', 'Origin', 'Destination']
                transfers.each do |transfer|
                  origin = transfer.from_account == self ? 'You'  :transfer.from_account.number
                  destination = transfer.to_account == self ? 'You'  :transfer.from_account.number
          
                  csv << [transfer.created_at, transfer.type, transfer.money, origin, destination]
                end
              end
          
              File.write('transfer_extract.csv', csv_data)
          
              puts Rainbow('Transfer extract downloaded as CSV.').yellow.bold
            end
          
            def download_json(transfers)
              json_data = transfers.map do |transfer|
                origin = transfer.from_account == self ? 'You' :transfer.from_account.number
                destination = transfer.to_account == self ? 'You' :transfer.from_account.number
          
                {
                  'Date/Time': transfer.created_at,
                  'Type': transfer.type,
                  'Value': transfer.money,
                  'Origin': origin,
                  'Destination': destination
                }
              end
              
          
              File.write('transfer_extract.json', JSON.pretty_generate(json_data))
          
              puts Rainbow('Transfer extract downloaded as JSON.').yellow.bold
            end
        