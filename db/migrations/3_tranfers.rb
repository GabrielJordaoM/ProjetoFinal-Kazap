Sequel.migration do
            change do
                create_table(:transfers) do
                 primary_key  :id
                 String :transfer_id, unique: true
                 foreign_key  :from_id, :accounts
                 foreign_key  :to_id, :accounts
                 float :money, default: 0
                 String :type
                 DateTime :created_at, default: Sequel::CURRENT_TIMESTAMP 
                                    end
                 end
end
