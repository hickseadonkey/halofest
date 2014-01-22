json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :team_name, :is_admin
  json.url user_url(user, format: :json)
end
