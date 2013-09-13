json.array!(@contacts) do |contact|
  json.extract! contact, :name, :phone, :email, :address
  json.url contact_url(contact, format: :json)
end
