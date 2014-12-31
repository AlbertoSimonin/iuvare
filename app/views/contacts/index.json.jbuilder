json.array!(@contacts) do |contact|
  json.extract! contact, :id, :users_id, :states_id, :name, :email, :telephone
  json.url contact_url(contact, format: :json)
end
