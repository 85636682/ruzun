json.array! @playeds do |played|
  json.home_team_score  played.home_team_score
  json.guest_team_score played.guest_team_score
  json.start_time played.start_time
  json.home_team do
    json.id   played.home_team.id
    json.name played.home_team.name
    json.logo played.home_team.logo.url("300x300")
    json.sign played.home_team.sign
  end
  json.guest_team do
    json.id   played.guest_team.id
    json.name played.guest_team.name
    json.logo played.guest_team.logo.url("300x300")
    json.sign played.guest_team.sign
  end
end
