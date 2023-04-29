json.extract! userorder, :id, :user_id, :amount, :created_at, :updated_at
json.url userorder_url(userorder, format: :json)
