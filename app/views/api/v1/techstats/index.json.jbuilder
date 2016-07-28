@techstats_by_team.each do |team_id, techstats|
  if team_id == @played.home_team.id
    json.home_team do
      json.id             @played.home_team.id
      json.name           @played.home_team.name
      json.logo           @played.home_team.logo.url("300x300")
      json.sign           @played.home_team.sign
      json.score          @played.home_team_score
      json.techstats do
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
    end
  end
  if team_id == @played.guest_team.id
    json.guest_team do
      json.id             @played.guest_team.id
      json.name           @played.guest_team.name
      json.logo           @played.guest_team.logo.url("300x300")
      json.sign           @played.guest_team.sign
      json.score          @played.guest_team_score
      json.techstats do
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
    end
  end
end