json.daylines do
  json.array! @daylines do |dayline|
    json.id         dayline.id
    json.subject    dayline.subject
  end
end
json.timelines do
  json.array! @timelines do |timeline|
    json.id         timeline.id
    json.subject    timeline.subject
  end
end
