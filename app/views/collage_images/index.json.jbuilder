json.array!(@collage_images) do |collage_image|
  json.extract! collage_image, :id, :collages_id, :source
  json.url collage_image_url(collage_image, format: :json)
end
