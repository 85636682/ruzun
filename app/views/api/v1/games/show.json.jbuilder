json.game do
  json.(@game, :id, :name, :constitution, :constitution_html, :created_at, :updated_at)
  json.logo     @game.logo.url
  json.teams @game.teams do |team|
    json.id     team.id
    json.name   team.name
    json.logo   team.logo.url("300x300")
    json.lot    GameTeam.where(game_id: @game.id, team_id: team.id).first.lot
  end
  json.techstats do
    @scores_order_by_sum.each do |score|
      json.id           score.user.id
      json.name         score.user.name
      json.pts_in_game  score.pts_in_game
    end
  end
end
