json.extract! account, :id, :account_no, :balance, :account_type, :user_id, :created_at, :updated_at
json.url account_url(account, format: :json)