json.array!(@users) do |user|
  json.extract! user, :id, :id_iuvare, :id_xango, :id_iuvare_sponsor, :id_xango_sponsor, :id_iuvare_placement, :id_xango_placement, :uid, :name, :lastname, :email, :password, :picture
  json.url user_url(user, format: :json)
end
