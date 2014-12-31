json.array!(@workshops) do |workshop|
  json.extract! workshop, :id, :title, :speaker, :lenght, :source
  json.url workshop_url(workshop, format: :json)
end
