json.user do
  json.team_user_id   @team_user.id
  json.number         @team_user.number
  json.id             @team_user.user.id
  json.name           @team_user.user.name
  json.avatar         @team_user.user.avatar.url("300x300")
  json.height         @team_user.user.height
  json.weight         @team_user.user.weight
  json.position       @team_user.user.position
end
