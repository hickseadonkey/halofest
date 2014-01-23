json.array!(@player_stats) do |player_stat|
  json.extract! player_stat, :id, :player_id, :year, :fpts_total, :fpts_avg
  json.url player_stat_url(player_stat, format: :json)
end
