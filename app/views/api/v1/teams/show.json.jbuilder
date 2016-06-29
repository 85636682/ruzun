json.team do
  json.(@team, :id, :name, :sign, :created_at, :updated_at)
  json.members @team.members do |member|
    json.id     member.id
    json.name   member.name
    json.avatar member.avatar
  end
end
