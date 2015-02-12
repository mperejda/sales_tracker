json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :temperature, :email, :phone_number, :assigned, :source
  json.url contact_url(contact, format: :json)
end
