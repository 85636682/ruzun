json.played do
  json.home_team_score  @played.home_team_score
  json.guest_team_score @played.guest_team_score
  json.start_day        formattime(@played.start_time, :unit => "noYearOnlyDay")
  json.start_time       formattime(@played.start_time, :unit => "noDayOnlyHour")
  json.finish           @played.finish
  json.teched           @played.teched
  json.home_team do
    json.id             @played.home_team.id
    json.name           @played.home_team.name
    json.logo           @played.home_team.logo.url("300x300")
    json.sign           @played.home_team.sign
  end
  json.guest_team do
    json.id             @played.guest_team.id
    json.name           @played.guest_team.name
    json.logo           @played.guest_team.logo.url("300x300")
    json.sign           @played.guest_team.sign
  end
end
json.techstats do
  json.array! @techstats_by_team do |team_id, techstats|
    json.array! techstats do |techstat|
      json.id         techstat.id
      json.pts        techstat.pts
      json.fouls      techstat.fouls
      json.to         techstat.to
      json.ast        techstat.ast
      json.stl        techstat.stl
      json.blk        techstat.blk
      json.off        techstat.off
      json.reb        techstat.reb
      json.pm3        techstat.pm3
      json.pm3_a      techstat.pm3_a
      json.ftm        techstat.ftm
      json.ftm_a      techstat.ftm_a
      json.fgm        techstat.fgm
      json.fgm_a      techstat.fgm_a
      json.user do
        json.id    techstat.user.id
        json.name  techstat.user.name
      end
    end
  end
end
