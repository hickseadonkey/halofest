json.array!(@drafts) do |draft|
  json.extract! draft, :id, :year, :status, :string
  json.url draft_url(draft, format: :json)
end
