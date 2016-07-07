json.array! @games do |game|
  json.id         game.id
  json.name       game.name
  json.logo       game.logo.url("300x300")
  json.created_at game.created_at
end
