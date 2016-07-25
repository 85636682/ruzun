json.team do
  json.(@team, :id, :name, :sign, :created_at, :updated_at)
  json.logo     @team.logo.url
  json.owner do
    json.id     @team.user.id
    json.name   @team.user.name
    json.avatar @team.user.avatar.url("300x300")
  end
  json.users @team.users do |user|
    json.user_id        user.id
    if user.present?
      json.id           user.user.id
      json.name         user.user.name
      json.avatar       user.user.avatar.url("300x300")
      json.height       user.user.height
      json.weight       user.user.weight
      json.position     user.user.position
    end
  end
end
