json.array!(@messages) do |message|
  json.extract! message, :id, :email, :name, :phone, :text, :visited
  json.url message_url(message, format: :json)
end
