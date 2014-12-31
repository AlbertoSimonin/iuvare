json.array!(@goal_to_bes) do |goal_to_be|
  json.extract! goal_to_be, :id, :users_id, :dream, :goal, :date
  json.url goal_to_be_url(goal_to_be, format: :json)
end
