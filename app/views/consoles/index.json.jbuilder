json.array!(@consoles) do |console|
  json.extract! console, :id, :name
  json.url console_url(console, format: :json)
end
