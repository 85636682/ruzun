json.team do
  json.(@team, :id, :name, :sign, :created_at, :updated_at)
  json.logo     @team.logo.url
  json.owner do
    json.id     @team.user.id
    json.name   @team.user.name
    json.avatar @team.user.avatar.url("300x300")
  end
  json.users @team.users do |user|
    json.id           user.id
    json.name         user.name
    json.avatar       user.avatar.url("300x300")
    json.height       user.height
    json.weight       user.weight
    json.position     user.position
  end
end
