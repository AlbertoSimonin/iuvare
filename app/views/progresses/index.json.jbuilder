json.array!(@progresses) do |progress|
  json.extract! progress, :id, :users_id, :call, :preplan, :plan, :closure, :tracking
  json.url progress_url(progress, format: :json)
end
