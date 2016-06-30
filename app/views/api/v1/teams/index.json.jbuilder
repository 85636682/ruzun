json.array! @teams do |team|
  json.id   team.id
  json.name team.name
  json.logo team.logo
  json.sign team.sign
end
