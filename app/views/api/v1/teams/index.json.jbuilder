json.array! @teams do |team|
  json.id   team.id
  json.name team.name
  json.logo team.logo.url("300x300")
  json.sign team.sign
end
