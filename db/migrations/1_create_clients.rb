
Sequel.migration do
    change do
        create_table(:clients) do
            primary_key :id 
            String :client_id, unique: true
            String :name, size: 100, null: false
            String :document , size: 100, null: false
            String :adress , size: 130 , null: false
            String :phone ,size: 14 ,null: false
            DateTime :created_at, default: Sequel::CURRENT_TIMESTAMP 
        end
    end
end