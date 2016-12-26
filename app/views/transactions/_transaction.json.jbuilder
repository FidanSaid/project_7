json.extract! transaction, :id, :transaction_no, :amount, :transaction_type, :account_id, :atm_machine_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)