json.team do
  json.(@team, :id, :name, :sign, :created_at, :updated_at)
  json.logo @team.logo.url
  json.users @team.users do |user|
    json.id     user.id
    json.name   user.name
    json.avatar user.avatar.url
    json.height user.height
    json.weight user.weight
  end
end
