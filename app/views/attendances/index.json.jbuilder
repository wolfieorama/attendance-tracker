json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :day, :available
  json.url attendance_url(attendance, format: :json)
end
