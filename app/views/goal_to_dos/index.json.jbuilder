json.array!(@goal_to_dos) do |goal_to_do|
  json.extract! goal_to_do, :id, :users_id, :dream, :goal, :date
  json.url goal_to_do_url(goal_to_do, format: :json)
end
