json.team do
  json.(@team, :id, :name, :sign, :created_at, :updated_at)
  json.users @team.users do |user|
    json.id     user.id
    json.name   user.name
    json.avatar user.avatar
  end
end
