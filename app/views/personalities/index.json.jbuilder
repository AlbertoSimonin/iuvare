json.array!(@personalities) do |personality|
  json.extract! personality, :id, :users_id, :red, :yellow, :green, :blue
  json.url personality_url(personality, format: :json)
end
