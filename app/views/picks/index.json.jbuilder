json.array!(@picks) do |pick|
  json.extract! pick, :id, :user_id, :draft_round_id, :pick_num, :pick_kind, :pre_picked_player_id, :picked_player_id
  json.url pick_url(pick, format: :json)
end
