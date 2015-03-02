json.array!(@leads) do |lead|
  json.extract! lead, :id, :project, :needs, :source, :contact, :assigned, :temperature, :value
  json.url lead_url(lead, format: :json)
end
