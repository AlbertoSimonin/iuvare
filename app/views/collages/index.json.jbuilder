json.array!(@collages) do |collage|
  json.extract! collage, :id, :users_id
  json.url collage_url(collage, format: :json)
end
