json.array!(@users) do |user|
  json.extract! user, :id, :name, :compagny
  json.url user_url(user, format: :json)
end
