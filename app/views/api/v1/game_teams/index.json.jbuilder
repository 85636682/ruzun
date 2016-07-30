json.array! @game_teams do |game_team|
  json.(game_team id, confirmed, created_at, updated_at, lot, points, wins, losses, :score_difference)
  json.team do
    json.id       game_team.team.id
    json.name     game_team.team.name
    json.logo     game_team.team.logo.url("300x300")
    json.sign     game_team.team.sign
  end
end