json.array!(@incidents) do |incident|
  json.extract! incident, :id, :name, :duration
  json.url incident_url(incident, format: :json)
end
