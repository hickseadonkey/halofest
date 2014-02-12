json.array!(@keepers) do |keeper|
  json.extract! keeper, :id
  json.url keeper_url(keeper, format: :json)
end
