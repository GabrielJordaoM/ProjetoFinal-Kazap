Sequel.migration do
        change do
            create_table(:accounts) do
            primary_key  :id
            foreign_key  :client_id, :clients
            String :account_id, unique: true
            Integer :number, unique: true
            float :money, default: 0
        end
    end
end
