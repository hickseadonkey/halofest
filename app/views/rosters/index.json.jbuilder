json.array!(@rosters) do |roster|
  json.extract! roster, :id, :user_id, :draft_id
  json.url roster_url(roster, format: :json)
end
