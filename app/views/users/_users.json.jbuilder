json.extract! users, :id, :first_name, :last_name, :nick_name, :email, :phone, :created_at, :updated_at
json.url users_url(users, format: :json)
