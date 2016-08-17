json.game do
  json.(@game, :id, :name, :constitution, :constitution_html, :created_at, :updated_at)
  json.logo     @game.logo.url
  json.teams @game.teams do |team|
    json.id     team.id
    json.name   team.name
    json.logo   team.logo.url("300x300")
    json.lot    GameTeam.where(game_id: @game.id, team_id: team.id).first.lot
  end
  json.techstats @scores_order_by_sum
end
