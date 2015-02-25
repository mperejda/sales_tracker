json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :email, :phone_number, :assigned, :source, :converted
  json.url contact_url(contact, format: :json)
end
