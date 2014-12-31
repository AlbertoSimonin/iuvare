json.array!(@workshop_scores) do |workshop_score|
  json.extract! workshop_score, :id, :users_id, :workshops_id, :score
  json.url workshop_score_url(workshop_score, format: :json)
end
