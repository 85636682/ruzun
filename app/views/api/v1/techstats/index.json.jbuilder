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
