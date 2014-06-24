json.array!(@games) do |game|
  json.extract! game, :id, :name, :descripton, :category_id, :console_id, :youtube_link, :status
  json.url game_url(game, format: :json)
end
