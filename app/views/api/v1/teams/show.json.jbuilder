json.team do
  json.(@team, :id, :name, :sign, :created_at, :updated_at)
  json.logo     @team.logo.url
  json.owner do
    json.id     @team.user.id
    json.name   @team.user.name
    json.avatar @team.user.avatar.url("300x300")
  end
  json.users @team.team_users do |team_user|
    json.team_user_id   team_user.id
    json.number         team_user.number
    json.id             team_user.user.id
    json.name           team_user.user.name
    json.avatar         team_user.user.avatar.url("300x300")
    json.height         team_user.user.height
    json.weight         team_user.user.weight
    json.position       team_user.user.position
  end
end
