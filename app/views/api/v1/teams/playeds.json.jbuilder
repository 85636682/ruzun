json.team do
  json.(@team, :id, :name, :sign, :created_at, :updated_at)
end
json.playeds do
  json.array! @playeds do |played|
    json.id               played.id
    json.home_team_score  played.home_team_score
    json.guest_team_score played.guest_team_score
    json.start_day        formattime(played.start_time, :unit => "noYearOnlyDay")
    json.start_time       formattime(played.start_time, :unit => "noDayOnlyHour")
    json.finish           played.finish
    json.teched           played.teched
    json.home_team do
      json.id             played.home_team.id
      json.name           played.home_team.name
      json.logo           played.home_team.logo.url("300x300")
      json.sign           played.home_team.sign
    end
    json.guest_team do
      json.id             played.guest_team.id
      json.name           played.guest_team.name
      json.logo           played.guest_team.logo.url("300x300")
      json.sign           played.guest_team.sign
    end
  end
end
