json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :year
  json.url event_url(event, format: :json)
end
