json.array!(@draft_rounds) do |draft_round|
  json.extract! draft_round, :id, :round_number, :draft_id, :pick_count
  json.url draft_round_url(draft_round, format: :json)
end
